import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:usb_serial/transaction.dart';
import 'package:usb_serial/usb_serial.dart';
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
  String errors = 'Ошибок нет';
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
  List<UsbDevice> devices = [];
  UsbPort? port;
  String status = "Disconnected";
  Transaction<String>? _transaction;
  UsbDevice? device;
  bool isConnected = false;

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
      viewWeather: _mapViewWeatherDashboardEvent,
      sendSosSms: _mapSendSosSmsDashboardEvent,
      viewDevices: _mapViewDevicesDashboardEvent,
    );
  }

  Stream<DashboardState> _mapInitialDashboardEvent(
      _InitialDashboardEvent event) async* {
    yield const DashboardState.loading();
    try {
      devices = await UsbSerial.listDevices();
      if (devices.length > 0) {
        final result = await connectTo(devices[0]);
        if (result) {
          yield DashboardState.success(message: status);
        } else {
          yield DashboardState.error(message: status);
        }
      } else {
        yield DashboardState.error(message: 'Устройство не обнаружено');
      }
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        await Geolocator.openLocationSettings();
      }
      yield const DashboardState.loading();
      getWeather();
      getData();
      voltage = 12.6;
      temperatureInCar = 28.3;
      fuelLevel = 3;
      isPowerEngine = false;
      isEmergencySignal = false;
      errors = '';
      turnoverEngine = 2500;
      fuelConsumption = 12.3;
      isOpenDoors = false;
      isOpenTrunk = false;
      isOnOffLowBeam = false;
      isOnOffHighBeam = false;
      temperatureEngine = 87.0;
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
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapStartEngineDashboardEvent(
      _StartEngineDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isPowerEngine = !isPowerEngine;
      try {
        sendCommand(
          object: 'engine',
          command: isPowerEngine,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapTurnEmergencySignalDashboardEvent(
      _TurnEmergencySignalDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isEmergencySignal = !isEmergencySignal;
      try {
        sendCommand(
          object: 'emergency_signal',
          command: isEmergencySignal,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
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
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapOpenDoorsDashboardEvent(
      _OpenDoorsDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isOpenDoors = !isOpenDoors;
      try {
        sendCommand(
          object: 'open_doors',
          command: isOpenDoors,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapOpenTrunkDashboardEvent(
      _OpenTrunkDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isOpenTrunk = !isOpenTrunk;
      try {
        sendCommand(
          object: 'open_trunk',
          command: isOpenTrunk,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapTurnOnOffHighBeamDashboardEvent(
      _TurnOnOffHighBeamDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isOnOffHighBeam = !isOnOffHighBeam;
      try {
        sendCommand(
          object: 'on_high_beam',
          command: isOnOffHighBeam,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    isOnOffLowBeam = false;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapTurnOnOffLowBeamDashboardEvent(
      _TurnOnOffLowBeamDashboardEvent event) async* {
    yield DashboardState.loading();
    if (isConnected) {
      isOnOffLowBeam = !isOnOffLowBeam;
      try {
        sendCommand(
          object: 'on_low_beam',
          command: isOnOffLowBeam,
        );
      } catch (ex) {
        yield DashboardState.error(message: ex.toString());
      }
    } else {
      yield DashboardState.error(message: 'Устройство не обнаружено');
    }
    isOnOffHighBeam = false;
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
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
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
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
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Stream<DashboardState> _mapViewDevicesDashboardEvent(
      _ViewDevivesDashboardEvent event) async* {
    yield DashboardState.viewDevices(
      devices: devices,
    );
    yield DashboardState.data(
      voltage: voltage,
      outsideTemperature: outsideTemperature,
      temperatureInCar: temperatureInCar,
      fuelLevel: fuelLevel,
      isPowerEngine: isPowerEngine,
      isEmergencySignal: isEmergencySignal,
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
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
      errors: errors,
      turnoverEngine: turnoverEngine,
      fuelConsumption: fuelConsumption,
      isOpenDoors: isOpenDoors,
      isOpenTrunk: isOpenTrunk,
      isOnOffLowBeam: isOnOffLowBeam,
      isOnOffHighBeam: isOnOffHighBeam,
      temperatureEngine: temperatureEngine,
      status: status,
    );
  }

  Future<bool> connectTo(device) async {
    if (_transaction != null) {
      _transaction!.dispose();
      _transaction = null;
    }

    if (port != null) {
      port!.close();
      port = null;
    }

    if (device == null) {
      device = null;
      status = "Disconnected";
      isConnected = false;
      return true;
    }

    port = await device.create();
    if (await (port!.open()) != true) {
      status = "Проблема с подключением устройства";
      return false;
    }
    device = device;

    await port!.setDTR(true);
    await port!.setRTS(true);
    await port!.setPortParameters(
      115200,
      UsbPort.DATABITS_8,
      UsbPort.STOPBITS_1,
      UsbPort.PARITY_NONE,
    );

    _transaction = Transaction.stringTerminated(
      port!.inputStream as Stream<Uint8List>,
      Uint8List.fromList([13, 10]),
    );

    status = "Connected";
    isConnected = true;
    return true;
  }

  getWeather() async {
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
    outsideTemperature = weather.main!.temp! - 273.15;
  }

  sendCommand({String object = '', var command}) async {
    var mapCommand = {object: command};
    await port!.write(Uint8List.fromList(json.encode(mapCommand).codeUnits));
  }

  getData() {
    try {
      port!.inputStream!.listen((Uint8List event) {
        errors = Utf8Decoder().convert(event);
        print(errors);
      });
    } catch (_) {
      print('Данные не получены');
    }
  }
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

  const factory DashboardState.viewDevices({
    final List<UsbDevice>? devices,
    final String? errors,
  }) = _ViewDevicesDashboardState;

  const factory DashboardState.data({
    final double? voltage,
    final double? outsideTemperature,
    final double? temperatureInCar,
    final int? fuelLevel,
    final bool? isPowerEngine,
    final bool? isEmergencySignal,
    final String? errors,
    final int? turnoverEngine,
    final double? fuelConsumption,
    final bool? isOpenDoors,
    final bool? isOpenTrunk,
    final bool? isOnOffLowBeam,
    final bool? isOnOffHighBeam,
    final double? temperatureEngine,
    final String? status,
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

  const factory DashboardEvent.turnOnOffLowBeam() =
      _TurnOnOffLowBeamDashboardEvent;

  const factory DashboardEvent.openSettings({
    final List<int>? code,
  }) = _OpenSettingsDashboardEvent;

  const factory DashboardEvent.viewWeather() = _ViewWeatherDashboardEvent;

  const factory DashboardEvent.viewDevices() = _ViewDevivesDashboardEvent;

  const factory DashboardEvent.sendSosSms() = _SendSosSmsDashboardEvent;
}
