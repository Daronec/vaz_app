import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/bottom_panel.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/center_panel.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/divider.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/left_panel.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/right_panel.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/top_panel.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';

class DashboardBody extends StatelessWidget {
  final double? voltage;
  final double? outsideTemperature;
  final double? temperatureInCar;
  final int? fuelLevel;
  final bool? isPowerEngine;
  final bool? isEmergencySignal;
  final List<int>? code;
  final int? turnoverEngine;
  final double? fuelConsumption;
  final bool? isOpenDoors;
  final bool? isOpenTrunk;
  final bool? isOnOffLowBeam;
  final bool? isOnOffHighBeam;
  final double? temperatureEngine;
  final int? partValueOdometer;
  final int? totalValueOdometer;

  const DashboardBody({
    Key? key,
    this.voltage,
    this.outsideTemperature,
    this.temperatureInCar,
    this.fuelLevel,
    this.isPowerEngine,
    this.isEmergencySignal,
    this.code,
    this.turnoverEngine,
    this.fuelConsumption,
    this.isOpenDoors,
    this.isOpenTrunk,
    this.isOnOffLowBeam,
    this.isOnOffHighBeam,
    this.temperatureEngine,
    this.partValueOdometer,
    this.totalValueOdometer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardViewModel(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TopPanel(
            fuelLevel: fuelLevel,
            voltage: voltage,
            outsideTemperature: outsideTemperature,
            temperatureInCar: temperatureInCar,
            temperatureEngine: temperatureEngine,
          ),
          CustomDivider(),
          Expanded(
            child: Row(
              children: [
                LeftPanel(
                  isPowerEngine: isPowerEngine,
                  isEmergencySignal: isEmergencySignal,
                  code: code,
                  startEngine: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.startEngine()),
                  turnEmergencySignal: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.turnEmergencySignal()),
                  openWarning: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.openWarning()),
                ),
                CenterPanel(
                  speed: 60,
                  turnoverEngine: turnoverEngine,
                  fuelConsumption: fuelConsumption,
                ),
                RightPanel(
                  isOpenDoors: isOpenDoors,
                  isOpenTrunk: isOpenTrunk,
                  isOnOffLowBeam: isOnOffLowBeam,
                  isOnOffHighBeam: isOnOffHighBeam,
                  openDoors: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.openDoors()),
                  openTrunk: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.openTrunk()),
                  turnOnOffHighBeam: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.turnOnOffHighBeam()),
                  turnOnOffLowBeam: () =>
                  BlocProvider.of<DashboardBloc>(context)
                    ..add(DashboardEvent.turnOnOffLowBeam()),
                ),
              ],
            ),
          ),
          CustomDivider(),
          BottomPanel(
            partValueOdometer: partValueOdometer,
            totalValueOdometer: totalValueOdometer,
            openSettings: () {},
          ),
        ],
      ),
    );
  }
}
