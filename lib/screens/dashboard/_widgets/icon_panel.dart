import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class ButtonPanel extends StatelessWidget {
  final String? icon;
  final String? title;
  final Function onTap;
  final bool on;

  const ButtonPanel({
    Key? key,
    this.icon,
    this.title,
    required this.onTap,
    this.on = false,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          height: (MediaQuery.of(context).size.height - 88) / 2,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (title != null)
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: on ? Colors.white : AppColors.grey,
                  ),
                ),
              if (icon != null)
                SvgPicture.asset(
                  icon!,
                  height: 50,
                  color: on ? AppColors.green : AppColors.light_grey,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
