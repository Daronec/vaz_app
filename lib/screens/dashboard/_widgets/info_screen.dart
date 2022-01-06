import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_bloc/dashboard_bloc.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/fuel_level.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/item_data_top_panel.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
    Key? key,
    required this.fuelLevel,
    required this.voltage,
    required this.outsideTemperature,
    required this.temperatureInCar,
    required this.temperatureEngine,
  }) : super(key: key);

  final int fuelLevel;
  final double voltage;
  final double outsideTemperature;
  final double temperatureInCar;
  final double temperatureEngine;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 6,
      childAspectRatio: 1,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      physics: NeverScrollableScrollPhysics(),
      children: [
        FuelLevel(
          level: fuelLevel,
        ),
        ItemDataTopPanel(
          icon: MainIcons.battery,
          data: '$voltage V',
        ),
        ItemDataTopPanel(
          icon: MainIcons.outside_temperature,
          data: '${outsideTemperature.round()}°',
          onTap: () => BlocProvider.of<DashboardBloc>(context)
            ..add(DashboardEvent.viewWeather()),
        ),
        ItemDataTopPanel(
          icon: MainIcons.temperature_in_car,
          data: '${temperatureInCar.round()}°',
        ),
        ItemDataTopPanel(
          icon: MainIcons.engine_coolant,
          data: '${temperatureEngine.round()}°',
        ),
      ],
    );
  }
}
