import 'package:flutter/cupertino.dart';
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
    required this.errors,
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
  final String errors;
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
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              StartEngine(
                onTap: () => startEngine(),
                on: isPowerEngine,
              ),
              const SizedBox(
                width: 20,
              ),
              EmergencyButton(
                onTap: turnEmergencySignal,
                on: isEmergencySignal,
              ),
              const SizedBox(
                width: 20,
              ),
              SystemAlarm(
                onTap: () => openWarning(),
                on: errors.isNotEmpty,
                errors: errors,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonPanel(
                icon: MainIcons.doors,
                onTap: () => openDoors(),
                on: isOpenDoors,
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonPanel(
                icon: MainIcons.trunk,
                onTap: () => openTrunk(),
                on: isOpenTrunk,
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonPanel(
                icon: MainIcons.high_beam,
                onTap: () => turnOnOffHighBeam(),
                on: isOnOffHighBeam,
              ),
              const SizedBox(
                width: 20,
              ),
              ButtonPanel(
                icon: MainIcons.low_beam,
                onTap: () => turnOnOffLowBeam(),
                on: isOnOffLowBeam,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
