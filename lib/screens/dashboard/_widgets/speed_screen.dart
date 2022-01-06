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

  final int turnoverEngine;

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DashboardViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Expanded(
            child: StreamBuilder<int>(
              initialData: 0,
              stream: vm.getSpeed,
              builder: (context, snapshot) {
                return Center(
                  child: Text(
                    snapshot.data.toString(),
                    style: AppTextStyles.header,
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StreamBuilder<double>(
                  initialData: 0.0,
                  stream: vm.getDistance,
                  builder: (context, snapshot) {
                    return Text(
                      snapshot.data.toString(),
                      style: AppTextStyles.subTitle.copyWith(
                        color: AppColors.light_yellow,
                        fontSize: 21,
                        fontWeight: FontWeight.w300,
                      ),
                    );
                  }),
              RichText(
                textDirection: TextDirection.ltr,
                text: TextSpan(
                  text: turnoverEngine.toString(),
                  style: AppTextStyles.subTitle.copyWith(
                    color: AppColors.light_yellow,
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " rpm",
                      style: AppTextStyles.subTitle.copyWith(
                        color: AppColors.red.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              StreamBuilder<double>(
                  initialData: 0.0,
                  stream: vm.getTimeDistance,
                  builder: (context, snapshot) {
                    return Text(
                      snapshot.data.toString(),
                      style: AppTextStyles.subTitle.copyWith(
                        color: AppColors.light_yellow,
                        fontSize: 21,
                        fontWeight: FontWeight.w300,
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
