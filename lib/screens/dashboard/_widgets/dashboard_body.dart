import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/control_screen.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/info_screen.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/speed_screen.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';

class DashboardBody extends StatelessWidget {
  final double voltage;
  final double outsideTemperature;
  final double temperatureInCar;
  final int fuelLevel;
  final bool isPowerEngine;
  final bool isEmergencySignal;
  final List<int> code;
  final int turnoverEngine;
  final double fuelConsumption;
  final bool isOpenDoors;
  final bool isOpenTrunk;
  final bool isOnOffLowBeam;
  final bool isOnOffHighBeam;
  final double temperatureEngine;
  final int partValueOdometer;
  final int totalValueOdometer;
  final int speed;

  const DashboardBody({
    Key? key,
    required this.voltage,
    required this.outsideTemperature,
    required this.temperatureInCar,
    required this.fuelLevel,
    required this.isPowerEngine,
    required this.isEmergencySignal,
    required this.code,
    required this.turnoverEngine,
    required this.fuelConsumption,
    required this.isOpenDoors,
    required this.isOpenTrunk,
    required this.isOnOffLowBeam,
    required this.isOnOffHighBeam,
    required this.temperatureEngine,
    required this.partValueOdometer,
    required this.totalValueOdometer,
    required this.speed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardViewModel(),
      child: PageView(
        children: [
          SpeedScreen(turnoverEngine: turnoverEngine),
          ControlScreen(
            isPowerEngine: isPowerEngine,
            isEmergencySignal: isEmergencySignal,
            code: code,
            startEngine: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.startEngine()),
            turnEmergencySignal: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.turnEmergencySignal()),
            openWarning: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.viewDevices()),
            isOpenDoors: isOpenDoors,
            isOpenTrunk: isOpenTrunk,
            isOnOffLowBeam: isOnOffLowBeam,
            isOnOffHighBeam: isOnOffHighBeam,
            openDoors: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.openDoors()),
            openTrunk: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.openTrunk()),
            turnOnOffLowBeam: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.turnOnOffHighBeam()),
            turnOnOffHighBeam: () => BlocProvider.of<DashboardBloc>(context)
              ..add(DashboardEvent.turnOnOffLowBeam()),
          ),
          InfoScreen(
            fuelLevel: fuelLevel,
            voltage: voltage,
            outsideTemperature: outsideTemperature,
            temperatureInCar: temperatureInCar,
            temperatureEngine: temperatureEngine,
          ),
        ],
      ),
    );
  }
}
