import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/status_widget.dart';
import 'package:vaz_mobile/screens/dashboard/view_model.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class SpeedScreen extends StatelessWidget {
  const SpeedScreen({
    Key? key,
    required this.turnoverEngine,
    required this.status,
  }) : super(key: key);

  final int turnoverEngine;
  final String status;

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<DashboardViewModel>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          StatusWidget(status: status),
          Expanded(
            child: StreamBuilder<String>(
              initialData: '',
              stream: vm.getSpeed,
              builder: (context, snapshot) {
                return Center(
                  child: RichText(
                    textDirection: TextDirection.ltr,
                    text: TextSpan(
                      text: snapshot.data,
                      style: AppTextStyles.header,
                      children: <TextSpan>[
                        TextSpan(
                          text: " km/h",
                          style: AppTextStyles.subTitle.copyWith(
                            color: AppColors.red.withOpacity(0.8),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              StreamBuilder<String>(
                initialData: '',
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
                },
              ),
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
              StreamBuilder<String>(
                initialData: '',
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
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
