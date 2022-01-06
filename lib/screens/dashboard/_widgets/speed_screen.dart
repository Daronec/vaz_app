import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class SpeedScreen extends StatelessWidget {
  const SpeedScreen({
    Key? key,
    required this.turnoverEngine,
  }) : super(key: key);

  final int? turnoverEngine;

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DashboardViewModel>(context);
    return Column(
      children: [
        StreamBuilder<int>(
          initialData: 0,
          stream: vm.getSpeed,
          builder: (context, snapshot) {
            return Text(
              snapshot.data.toString(),
              style: AppTextStyles.header,
            );
          },
        ),
        Row(
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
      ],
    );
  }
}
