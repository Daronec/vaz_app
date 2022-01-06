import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class CenterPanel extends StatelessWidget {
  final int? speed;
  final int? turnoverEngine;
  final double? fuelConsumption;

  const CenterPanel({
    Key? key,
    this.speed,
    this.turnoverEngine,
    this.fuelConsumption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DashboardViewModel>(context);
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2,
            style: BorderStyle.solid,
          ),
          color: AppColors.background_panel,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fuelConsumption.toString(),
                  style: AppTextStyles.subTitle.copyWith(
                    color: AppColors.light_yellow,
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' L/100km',
                  style: AppTextStyles.subTitle.copyWith(
                    color: AppColors.red.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
            StreamBuilder<double>(
                stream: vm.getSpeed,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data.toString(),
                    style: AppTextStyles.header,
                  );
                }),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  turnoverEngine.toString(),
                  style: AppTextStyles.subTitle.copyWith(
                    color: AppColors.light_yellow,
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ' rpm',
                  style: AppTextStyles.subTitle.copyWith(
                    color: AppColors.red.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
