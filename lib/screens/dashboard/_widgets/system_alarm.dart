import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class SystemAlarm extends StatefulWidget {
  final Function onTap;
  final bool on;

  const SystemAlarm({
    Key? key,
    required this.onTap,
    this.on = false,
  }) : super(
          key: key,
        );

  @override
  _SystemAlarmState createState() => _SystemAlarmState();
}

class _SystemAlarmState extends State<SystemAlarm>
    with SingleTickerProviderStateMixin {
  Color? color;
  late Animation<Color?> animation;
  AnimationController? controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );

    final CurvedAnimation curve = CurvedAnimation(
      parent: controller!,
      curve: Curves.ease,
    );

    animation = ColorTween(
      begin: AppColors.dark_grey,
      end: AppColors.red,
    ).animate(curve);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller!.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller!.forward();
      }
    });
    controller!.forward();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext? context, Widget? child) {
        return Container(
          height: 64,
          width: 64,
          padding: const EdgeInsets.all(4),
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
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
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
              onPressed: () {
                widget.onTap();
                initState();
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              icon: SvgPicture.asset(
                MainIcons.brake_system_warning,
                height: 40,
                width: 40,
                color: widget.on ? animation.value : AppColors.dark_grey,
              ),
            ),
          ),
        );
      },
    );
  }
}
