import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    Key? key,
    required this.status,
  }) : super(key: key);

  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: status == 'Connected' ? AppColors.green : AppColors.red,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          status,
          style: AppTextStyles.subTitle.copyWith(
            color: status == 'Connected' ? AppColors.green : AppColors.red,
          ),
        ),
      ],
    );
  }
}
