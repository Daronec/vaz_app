import 'package:flutter/material.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/divider.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/fuel_level.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/item_data_top_panel.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class TopPanel extends StatelessWidget {
  final int? fuelLevel;
  final double? voltage;
  final double? outsideTemperature;
  final double? temperatureInCar;
  final double? temperatureEngine;

  const TopPanel({
    Key? key,
    this.fuelLevel,
    this.voltage,
    this.outsideTemperature,
    this.temperatureInCar,
    this.temperatureEngine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.background_panel,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FuelLevel(
            level: fuelLevel,
          ),
          CustomVerticalDivider(),
          ItemDataTopPanel(
            icon: MainIcons.battery,
            data: '$voltage V',
          ),
          CustomVerticalDivider(),
          ItemDataTopPanel(
            icon: MainIcons.outside_temperature,
            data: '$outsideTemperature°',
          ),
          CustomVerticalDivider(),
          ItemDataTopPanel(
            icon: MainIcons.temperature_in_car,
            data: '$temperatureInCar°',
          ),
          CustomVerticalDivider(),
          ItemDataTopPanel(
            icon: MainIcons.engine_coolant,
            data: '$temperatureEngine°',
          ),
        ],
      ),
    );
  }
}
