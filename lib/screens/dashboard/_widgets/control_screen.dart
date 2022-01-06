import 'package:flutter/material.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/emergency_button.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/icon_panel.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/start_engine.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/system_alarm.dart';

class ControlScreen extends StatelessWidget {
  const ControlScreen({
    Key? key,
    required this.isPowerEngine,
    required this.isEmergencySignal,
    required this.code,
    required this.startEngine,
    required this.turnEmergencySignal,
    required this.openWarning,
    required this.isOpenDoors,
    required this.isOpenTrunk,
    required this.isOnOffLowBeam,
    required this.isOnOffHighBeam,
    required this.openDoors,
    required this.openTrunk,
    required this.turnOnOffLowBeam,
    required this.turnOnOffHighBeam,
  }) : super(key: key);

  final bool isEmergencySignal;
  final bool isPowerEngine;
  final List<int> code;
  final Function startEngine;
  final Function turnEmergencySignal;
  final Function openWarning;
  final bool isOpenDoors;
  final bool isOpenTrunk;
  final bool isOnOffLowBeam;
  final bool isOnOffHighBeam;
  final Function openDoors;
  final Function openTrunk;
  final Function turnOnOffLowBeam;
  final Function turnOnOffHighBeam;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            StartEngine(
              onTap: () => startEngine(),
              on: isPowerEngine,
            ),
            EmergencyButton(
              onTap: turnEmergencySignal,
              on: isEmergencySignal,
            ),
            SystemAlarm(
              onTap: () => openWarning(),
              on: code.isNotEmpty,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconPanel(
              icon: MainIcons.doors,
              onTap: () => openDoors(),
              on: isOpenDoors,
            ),
            IconPanel(
              icon: MainIcons.trunk,
              onTap: () => openTrunk(),
              on: isOpenTrunk,
            ),
            IconPanel(
              icon: MainIcons.high_beam,
              onTap: () => turnOnOffHighBeam(),
              on: isOnOffHighBeam,
            ),
            IconPanel(
              icon: MainIcons.low_beam,
              onTap: () => turnOnOffLowBeam(),
              on: isOnOffLowBeam,
            ),
          ],
        ),
      ],
    );
  }
}
