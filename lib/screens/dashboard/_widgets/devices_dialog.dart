import 'package:flutter/material.dart';
import 'package:usb_serial/usb_serial.dart';

class DevicesDialog extends StatelessWidget {
  final List<UsbDevice> devices;

  const DevicesDialog({
    Key? key,
    required this.devices,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return devices.length > 0 ? ListView.builder(
        itemCount: devices.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(30),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${devices[index].deviceId}'),
            subtitle: Text(devices[index].manufacturerName!),
            title: Text(devices[index].productName!),
          );
        }) : Center(
      child: Text('Устройство не обнаружено'),
    );
  }
}
