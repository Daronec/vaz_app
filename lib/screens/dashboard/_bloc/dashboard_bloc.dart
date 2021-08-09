import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usb_serial/usb_serial.dart';

part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState.initial());

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
    );
  }

  Stream<DashboardState> _mapInitialDashboardEvent(
      _InitialDashboardEvent event) async* {
    yield const DashboardState.loading();

    try {
      List<UsbDevice>? devices = await UsbSerial.listDevices();
      print(devices);

      UsbPort? port;
      SharedPreferences _prefs = await SharedPreferences.getInstance();
      voltage = 12.6;
      outsideTemperature = 35.3;
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
      if (prefs != '') {
        totalValueOdometer = int.tryParse(prefs!)!;
      } else {
        totalValueOdometer = 0;
      }
      partValueOdometer = 56;
      speed = 60;

      if (devices.length == 0) {
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
      port = await devices[0].create();

      bool openResult = await port!.open();
      if ( !openResult ) {
        print("Failed to open");
        return;
      }

      await port.setDTR(true);
      await port.setRTS(true);

      port.setPortParameters(115200, UsbPort.DATABITS_8,
          UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);

      // print first result and close port.
      port.inputStream!.listen((Uint8List ev) {
        print(ev);
        port!.close();
      });

      await port.write(Uint8List.fromList([0x10, 0x00]));


    } catch (e) {
      yield const DashboardState.error(message: '');
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
}

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _InitialDashboardState;

  const factory DashboardState.loading() = _LoadingDashboardState;

  const factory DashboardState.editOdometer() = _EditOdometerDashboardState;

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

  const factory DashboardEvent.saveValueOdometer() = _SaveValueOdometerDashboardEvent;
}
