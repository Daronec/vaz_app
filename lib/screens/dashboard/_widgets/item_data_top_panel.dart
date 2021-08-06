import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class ItemDataTopPanel extends StatelessWidget {
  final String? icon;
  final String? data;

  const ItemDataTopPanel({
    Key? key,
    required this.icon,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon!,
          color: AppColors.light_yellow,
          height: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          data!,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColors.light_yellow),
        ),
      ],
    );
  }
}
