import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class FuelConsumption extends StatelessWidget {
  const FuelConsumption({
    Key? key,
    required this.fuelConsumption,
  }) : super(key: key);

  final double fuelConsumption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          fuelConsumption.toString(),
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: AppColors.light_yellow),
        ),
        Text(
          ' L/100km',
          style: AppTextStyles.subTitle.copyWith(
            color: AppColors.red.withOpacity(0.8),
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
