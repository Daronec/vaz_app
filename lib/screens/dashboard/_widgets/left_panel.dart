import 'package:flutter/material.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/emergency_button.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/start_engine.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/system_alarm.dart';

class LeftPanel extends StatelessWidget {
  final bool? isEmergencySignal;
  final bool? isPowerEngine;
  final List<int>? code;
  final Function? startEngine;
  final Function? turnEmergencySignal;
  final Function? openWarning;

  const LeftPanel({
    Key? key,
    this.isPowerEngine,
    this.isEmergencySignal,
    this.code,
    this.startEngine,
    this.turnEmergencySignal,
    this.openWarning,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          StartEngine(
            onTap: () => startEngine!(),
            on: isPowerEngine!,
          ),
          EmergencyButton(
            onTap: turnEmergencySignal!,
            on: isEmergencySignal!,
          ),
          SystemAlarm(
            onTap: () => openWarning!(),
            on: code!.isNotEmpty,
          ),
        ],
      ),
    );
  }
}
