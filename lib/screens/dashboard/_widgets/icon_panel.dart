import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class IconPanel extends StatelessWidget {
  final String icon;
  final Function onTap;
  final bool on;

  const IconPanel({
    Key? key,
    required this.icon,
    required this.onTap,
    this.on = false,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          width: 3,
          color: AppColors.dark_grey,
          style: BorderStyle.solid,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.dark_grey,
            offset: Offset(0.0, 0.0),
            blurRadius: 4.0,
          ),
        ],
        color: Colors.black54,
      ),
      child: Container(
        height: 38,
        width: 38,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0.0, 0.0),
              blurRadius: 3.0,
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF323232),
              Color(0xFF191919),
              Color(0xFF000000),
              Color(0xFF323232),
            ],
            stops: [0, 0.49, 0.50, 1],
          ),
        ),
        child: IconButton(
          padding: const EdgeInsets.all(4),
          onPressed: () => onTap(),
          icon: SvgPicture.asset(
            icon,
            color: on ? AppColors.green : AppColors.light_grey,
          ),
        ),
      ),
    );
  }
}
