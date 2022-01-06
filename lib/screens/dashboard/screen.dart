import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/dashboard_body.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/devices_dialog.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/weather_dialog.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/widgets/custom_indicator.dart';
import 'package:vaz_mobile/widgets/dialogs/main_show_dialog.dart';
import 'package:vaz_mobile/widgets/show_alert.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocProvider(
        create: (context) => DashboardBloc()..add(DashboardEvent.initial()),
        child: SafeArea(
          child: ChangeNotifierProvider(
            create: (_) => DashboardViewModel(),
            child: Scaffold(
              backgroundColor: AppColors.background,
              body: BlocConsumer<DashboardBloc, DashboardState>(
                listener: (context, state) {
                  state.maybeMap(
                    viewDevices: (_devices) => mainShowDialog(
                      context,
                      DevicesDialog(devices: _devices.devices!),
                    ),
                    viewWeather: (_weather) => mainShowDialog(
                      context,
                      WeatherDialog(
                        name: _weather.name,
                        temp: _weather.temp,
                        pressure: _weather.pressure,
                        speedWind: _weather.speedWind,
                        humidity: _weather.humidity,
                      ),
                    ),
                    error: (_error) => showAlert(
                      context,
                      _error.message!,
                      firstButton: 'Закрыть',
                      pressedFirstButton: () {
                        Navigator.pop(context);
                      },
                    ),
                    editOdometer: (_) {},
                    orElse: () => SizedBox.shrink(),
                  );
                },
                builder: (context, state) {
                  return state.maybeMap(
                    loading: (_) => CircularProgressIndicatorWidget(),
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
                      partValueOdometer: _data.partValueOdometer,
                      totalValueOdometer: _data.totalValueOdometer,
                      speed: _data.speed,
                    ),
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
