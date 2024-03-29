import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/resourses/strings.dart';
import 'package:vaz_mobile/style/app_colors.dart';

class StartEngine extends StatefulWidget {
  final Function onTap;
  final bool on;

  const StartEngine({
    Key? key,
    required this.onTap,
    this.on = false,
  }) : super(
          key: key,
        );

  @override
  _StartEngineState createState() => _StartEngineState();
}

class _StartEngineState extends State<StartEngine> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onLongPress: () {
          setState(() {
            widget.onTap();
          });
        },
        child: Container(
          height: (MediaQuery.of(context).size.height - 88) / 2,
          padding: const EdgeInsets.all(4),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.push_start,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: widget.on ? Colors.white : AppColors.grey,
                ),
              ),
              SvgPicture.asset(
                MainIcons.engine,
                width: 60,
                color: widget.on ? Colors.yellow : AppColors.light_grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
