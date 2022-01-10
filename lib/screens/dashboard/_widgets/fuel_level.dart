import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class FuelLevel extends StatelessWidget {
  final int? level;

  const FuelLevel({
    Key? key,
    required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SvgPicture.asset(
          MainIcons.fuel,
          color: getColors(level!),
          height: 36,
        ),
        const SizedBox(
          width: 10,
        ),
        ...List.generate(
          10,
          (index) => Container(
            margin: const EdgeInsets.only(right: 2),
            color: level! >= index ? getColors(level!) : AppColors.grey,
            width: 2,
            height: index * 3 + 2,
          ),
        ),
      ],
    );
  }
}

Color getColors(int level) {
  Color color;
  if (level == 0) {
    color = AppColors.red;
  } else if (level == 1) {
    color = AppColors.orange;
  } else {
    color = AppColors.light_yellow;
  }
  return color;
}
