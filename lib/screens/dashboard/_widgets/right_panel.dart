import 'package:flutter/material.dart';
import 'package:vaz_mobile/resourses/main_icons.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/divider.dart';
import 'package:vaz_mobile/screens/dashboard/_widgets/icon_panel.dart';

class RightPanel extends StatelessWidget {
  final bool? isOpenDoors;
  final bool? isOpenTrunk;
  final bool? isOnOffLowBeam;
  final bool? isOnOffHighBeam;
  final Function? openDoors;
  final Function? openTrunk;
  final Function? turnOnOffLowBeam;
  final Function? turnOnOffHighBeam;

  const RightPanel({Key? key,
    this.isOpenDoors,
    this.isOpenTrunk,
    this.isOnOffLowBeam,
    this.isOnOffHighBeam,
    this.openDoors,
    this.openTrunk,
    this.turnOnOffLowBeam,
    this.turnOnOffHighBeam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconPanel(
            icon: MainIcons.doors,
            onTap: () => openDoors!(),
            on: isOpenDoors!,
          ),
          IconPanel(
            icon: MainIcons.trunk,
            onTap: () => openTrunk!(),
            on: isOpenTrunk!,
          ),
          IconPanel(
            icon: MainIcons.high_beam,
            onTap: () => turnOnOffHighBeam!(),
            on: isOnOffHighBeam!,
          ),
          CustomDivider(),
          IconPanel(
            icon: MainIcons.low_beam,
            onTap: () => turnOnOffLowBeam!(),
            on: isOnOffLowBeam!,
          ),
        ],
      ),
    );
  }
}
