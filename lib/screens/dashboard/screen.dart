import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/dashboard_body.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/widgets/show_alert.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc()..add(DashboardEvent.initial()),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.background,
          body: BlocConsumer<DashboardBloc, DashboardState>(
            listener: (context, state) {
              state.maybeMap(
                error: (_error) => showAlert(
                  context,
                  _error.message!,
                  description: 'ВНИМАНИЕ',
                  firstButton: 'Закрыть',
                  pressedFirstButton: () {
                    Navigator.pop(context);
                  },
                ),
                orElse: () => SizedBox.shrink(),
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                loading: (_) => CircularProgressIndicator(),
                data: (_data) => DashboardBody(
                  voltage: _data.voltage,
                  outsideTemperature: _data.outsideTemperature,
                  temperatureInCar: _data.temperatureInCar,
                  fuelLevel: _data.fuelLevel,
                  isPowerEngine: _data.isPowerEngine,
                  isEmergencySignal: _data.isEmergencySignal,
                  code: _data.code,
                  turnoverEngine: _data.turnoverEngine,
                  fuelConsumption: _data.fuelConsumption,
                  isOpenDoors: _data.isOpenDoors,
                  isOpenTrunk: _data.isOpenTrunk,
                  isOnOffLowBeam: _data.isOnOffLowBeam,
                  isOnOffHighBeam: _data.isOnOffHighBeam,
                  temperatureEngine: _data.temperatureEngine,
                ),
                orElse: () => SizedBox.shrink(),
              );
            },
          ),
        ),
      ),
    );
  }
}
