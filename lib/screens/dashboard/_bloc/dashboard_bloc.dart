import 'dart:async';
import 'dart:core';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:usb_serial/usb_serial.dart';
// import 'package:usb_serial/transaction.dart';
import 'package:vaz_mobile/data/helpers/request_error.dart';
import 'package:vaz_mobile/data/repository.dart';

part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState.initial());

  Repository repository = Repository();

  /*
   Входные данные:
   1. Вольтаж бортовой сети
   2. Температура снаружи
   3. Температура в салоне
   4. Уровень топлива
   5. Состояние работы двигателя (запущен/заглушен)
   6. Состояние включения аварийного светового сигнала
   7. Код неисправности
   8. Обороты двигателя
   9. Расход топлива двигателя
   10. Состояние дверей (открыты/закрыты)
   11. Состояние багажника (открыт/закрыт)
   12. Состояние ближнего света (включен/выключен)
   13. Состояние дальнего света (включен/выключен)
   14. Температура охлаждающей жидкости
   15. Общие показания одометра
   16. Временные показания одометра
   */

  double voltage = 0.0;
  double outsideTemperature = 0.0;
  double temperatureInCar = 0.0;
  int fuelLevel = 0;
  bool isPowerEngine = false;
  bool isEmergencySignal = false;
  List<int> code = [];
  int turnoverEngine = 0;
  double fuelConsumption = 0;
  bool isOpenDoors = false;
  bool isOpenTrunk = false;
  bool isOnOffLowBeam = false;
  bool isOnOffHighBeam = false;
  double temperatureEngine = 0.0;
  int totalValueOdometer = 0;
  int partValueOdometer = 0;
  int speed = 0;
  double? lat = 0.0;
  double? lon = 0.0;
  String? nameLocation = '';
  double? tempLocation = 0.0;
  int? pressure = 0;
  double? speedWind = 0.0;
  int? humidity = 0;

  // UsbPort? _port;
  // String _status = "Idle";
  // List<Widget> _ports = [];
  // List<Widget> _serialData = [];
  //
  // StreamSubscription<String>? _subscription;
  // Transaction<String>? _transaction;
  UsbDevice? _device;
  UsbDeviceConnection? usbConnection;
  UsbSerialDevice serial = UsbSerialDevice.createUsbSerialDevice(device, usbConnection);

  @override
  Stream<DashboardState> mapEventToState(DashboardEvent event) async* {
    yield* event.map(
      initial: _mapInitialDashboardEvent,
      startEngine: _mapStartEngineDashboardEvent,
      turnEmergencySignal: _mapTurnEmergencySignalDashboardEvent,
      openWarning: _mapOpenWarningDashboardEvent,
      openDoors: _mapOpenDoorsDashboardEvent,
      openTrunk: _mapOpenTrunkDashboardEvent,
      turnOnOffHighBeam: _mapTurnOnOffHighBeamDashboardEvent,
      turnOnOffLowBeam: _mapTurnOnOffLowBeamDashboardEvent,
      openSettings: _mapOpenSettingsDashboardEvent,
      discardOdometer: _mapDiscardOdometerDashboardEvent,
      editOdometer: _mapEditOdometerDashboardEvent,
      saveValueOdometer: _mapSaveValueOdometerDashboardEvent,
      viewWeather: _mapViewWeatherDashboardEvent,
      sendSosSms: _mapSendSosSmsDashboardEvent,
    );
  }

  Stream<DashboardState> _mapInitialDashboardEvent(
      _InitialDashboardEvent event) async* {
    yield const DashboardState.loading();

    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      lat = position.latitude;
      lon = position.longitude;
      final weather = await repository.weather(
        position.latitude,
        position.longitude,
      );
      tempLocation = weather.main!.temp;
      nameLocation = weather.name;
      pressure = weather.main!.pressure;
      humidity = weather.main!.humidity;
      speedWind = weather.wind!.speed;
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      voltage = 12.6;
      outsideTemperature = weather.main!.temp! - 273.15;
      temperatureInCar = 28.3;
      fuelLevel = 3;
      isPowerEngine = false;
      isEmergencySignal = false;
      code = [];
      turnoverEngine = 2500;
      fuelConsumption = 12.3;
      isOpenDoors = false;
      isOpenTrunk = false;
      isOnOffLowBeam = false;
      isOnOffHighBeam = false;
      temperatureEngine = 87.0;
      final prefs = _prefs.getString('totalValueOdometer');
      if (prefs != null) {
        totalValueOdometer = int.tryParse(prefs)!;
      } else {
        totalValueOdometer = 0;
      }
      partValueOdometer = 56;
      speed = 60;

    } catch (ex) {
      yield DashboardState.error(message: requestError(ex));
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapStartEngineDashboardEvent(
      _StartEngineDashboardEvent event) async* {
    yield DashboardState.loading();
    isPowerEngine = !isPowerEngine;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapTurnEmergencySignalDashboardEvent(
      _TurnEmergencySignalDashboardEvent event) async* {
    yield DashboardState.loading();
    isEmergencySignal = !isEmergencySignal;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapOpenWarningDashboardEvent(
      _OpenWarningDashboardEvent event) async* {
    yield DashboardState.loading();
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapOpenDoorsDashboardEvent(
      _OpenDoorsDashboardEvent event) async* {
    yield DashboardState.loading();
    isOpenDoors = !isOpenDoors;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapOpenTrunkDashboardEvent(
      _OpenTrunkDashboardEvent event) async* {
    yield DashboardState.loading();
    isOpenTrunk = !isOpenTrunk;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapTurnOnOffHighBeamDashboardEvent(
      _TurnOnOffHighBeamDashboardEvent event) async* {
    yield DashboardState.loading();
    isOnOffHighBeam = !isOnOffHighBeam;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapTurnOnOffLowBeamDashboardEvent(
      _TurnOnOffLowBeamDashboardEvent event) async* {
    yield DashboardState.loading();
    isOnOffLowBeam = !isOnOffLowBeam;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapOpenSettingsDashboardEvent(
      _OpenSettingsDashboardEvent event) async* {
    yield DashboardState.loading();
    isOnOffLowBeam = !isOnOffLowBeam;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapDiscardOdometerDashboardEvent(
      _DiscardOdometerDashboardEvent event) async* {
    yield DashboardState.loading();
    if (event.type == 0) {
      partValueOdometer = 0;
    }
    if (event.type == 1) {
      totalValueOdometer = 0;
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapEditOdometerDashboardEvent(
      _EditOdometerDashboardEvent event) async* {
    totalValueOdometer = int.tryParse(event.valueOdometer!)!;
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    _prefs.setString('totalValueOdometer', event.valueOdometer!);
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapSaveValueOdometerDashboardEvent(
      _SaveValueOdometerDashboardEvent event) async* {
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapViewWeatherDashboardEvent(
      _ViewWeatherDashboardEvent event) async* {
    try {
      final weather = await repository.weather(lat!, lon!);
      tempLocation = weather.main!.temp! - 273.15;
      nameLocation = weather.name;
      pressure = weather.main!.pressure;
      humidity = weather.main!.humidity;
      speedWind = weather.wind!.speed;
    } catch (ex) {
      yield DashboardState.error(message: requestError(ex));
    }

    yield DashboardState.viewWeather(
      name: nameLocation,
      temp: tempLocation,
      pressure: pressure,
      speedWind: speedWind,
      humidity: humidity,
    );
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  Stream<DashboardState> _mapSendSosSmsDashboardEvent(
      _SendSosSmsDashboardEvent event) async* {
    try {
      final smsResponse = await repository.sendSosSms(
        'daronec@yandex.ru',
        'Sl9XTQ3jmD4xiFloA80HqJj6Ok8g',
        '79189952689',
        'Мне нужна помощь. Мои координаты - $lat-$lon',
        'Sms Aero',
      );
      print(smsResponse.message);
    } on FormatException {
      print('Format error!');
    } catch (ex) {
      yield DashboardState.error(message: requestError(ex));
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      code: code,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      totalValueOdometer: totalValueOdometer,
      partValueOdometer: partValueOdometer,
      speed: speed,
    );
  }

  // Future<bool> _connectTo(device) async {
  //   _serialData.clear();
  //
  //   if (_subscription != null) {
  //     _subscription!.cancel();
  //     _subscription = null;
  //   }
  //
  //   if (_transaction != null) {
  //     _transaction!.dispose();
  //     _transaction = null;
  //   }
  //
  //   if (_port != null) {
  //     _port!.close();
  //     _port = null;
  //   }
  //
  //   if (device == null) {
  //     _device = null;
  //     _status = "Disconnected";
  //     return true;
  //   }
  //
  //   _port = await device.create();
  //   if (await (_port!.open()) != true) {
  //     _status = "Failed to open port";
  //     return false;
  //   }
  //   _device = device;
  //
  //   await _port!.setDTR(true);
  //   await _port!.setRTS(true);
  //   await _port!.setPortParameters(115200, UsbPort.DATABITS_8, UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);
  //
  //   _transaction = Transaction.stringTerminated(_port!.inputStream as Stream<Uint8List>, Uint8List.fromList([13, 10]));
  //
  //   _subscription = _transaction!.stream.listen((String line) {
  //     _serialData.add(Text(line));
  //     if (_serialData.length > 20) {
  //       _serialData.removeAt(0);
  //     }
  //   });
  //
  //   _status = "Connected";
  //   return true;
  // }
  //
  // void _getPorts() async {
  //   _ports = [];
  //
  //   List<UsbDevice> devices = await UsbSerial.listDevices();
  //   if (!devices.contains(_device)) {
  //     _connectTo(null);
  //   }
  //   print(devices);
  //
  //   // devices.forEach((device) {
  //   //   _ports.add(ListTile(
  //   //       leading: Icon(Icons.usb),
  //   //       title: Text(device.productName!),
  //   //       subtitle: Text(device.manufacturerName!),
  //   //       trailing: ElevatedButton(
  //   //         child: Text(_device == device ? "Disconnect" : "Connect"),
  //   //         onPressed: () {
  //   //           _connectTo(_device == device ? null : device).then((res) {
  //   //             _getPorts();
  //   //           });
  //   //         },
  //   //       )));
  //   // });
  //   //
  //   // print(_ports);
  // }

}

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _InitialDashboardState;

  const factory DashboardState.loading() = _LoadingDashboardState;

  const factory DashboardState.editOdometer() = _EditOdometerDashboardState;

  const factory DashboardState.viewWeather({
    final String? name,
    final double? temp,
    final int? pressure,
    final double? speedWind,
    final int? humidity,
  }) = _ViewWeatherDashboardState;

  const factory DashboardState.data({
    final double? voltage,
    final double? outsideTemperature,
    final double? temperatureInCar,
    final int? fuelLevel,
    final bool? isPowerEngine,
    final bool? isEmergencySignal,
    final List<int>? code,
    final int? turnoverEngine,
    final double? fuelConsumption,
    final bool? isOpenDoors,
    final bool? isOpenTrunk,
    final bool? isOnOffLowBeam,
    final bool? isOnOffHighBeam,
    final double? temperatureEngine,
    final int? totalValueOdometer,
    final int? partValueOdometer,
    final int? speed,
  }) = _DataDashboardState;

  const factory DashboardState.error({
    final String? message,
  }) = _ErrorDashboardState;

  const factory DashboardState.success({
    final String? message,
  }) = _SuccessDashboardState;
}

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.initial() = _InitialDashboardEvent;

  const factory DashboardEvent.startEngine() = _StartEngineDashboardEvent;

  const factory DashboardEvent.turnEmergencySignal() =
      _TurnEmergencySignalDashboardEvent;

  const factory DashboardEvent.openWarning() = _OpenWarningDashboardEvent;

  const factory DashboardEvent.openDoors() = _OpenDoorsDashboardEvent;

  const factory DashboardEvent.openTrunk() = _OpenTrunkDashboardEvent;

  const factory DashboardEvent.turnOnOffHighBeam() =
      _TurnOnOffHighBeamDashboardEvent;

  const factory DashboardEvent.turnOnOffLowBeam({
    final List<int>? code,
  }) = _TurnOnOffLowBeamDashboardEvent;

  const factory DashboardEvent.openSettings({
    final List<int>? code,
  }) = _OpenSettingsDashboardEvent;

  const factory DashboardEvent.discardOdometer({
    final int? type,
  }) = _DiscardOdometerDashboardEvent;

  const factory DashboardEvent.editOdometer({
    final String? valueOdometer,
  }) = _EditOdometerDashboardEvent;

  const factory DashboardEvent.saveValueOdometer() =
      _SaveValueOdometerDashboardEvent;

  const factory DashboardEvent.viewWeather() = _ViewWeatherDashboardEvent;

  const factory DashboardEvent.sendSosSms() = _SendSosSmsDashboardEvent;
}

