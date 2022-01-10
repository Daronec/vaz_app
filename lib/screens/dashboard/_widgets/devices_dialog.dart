import 'package:flutter/material.dart';
import 'package:usb_serial/usb_serial.dart';

class DevicesDialog extends StatelessWidget {
  const DevicesDialog({
    Key? key,
    required this.devices,
    required this.errors,
  }) : super(key: key);

  final List<UsbDevice> devices;
  final String errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        devices.length > 0
            ? ListView.builder(
                itemCount: devices.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(30),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text('${devices[index].deviceId}'),
                    subtitle: Text(devices[index].manufacturerName!),
                    title: Text(devices[index].productName!),
                  );
                },
              )
            : Center(
                child: Text('Устройство не обнаружено'),
              ),
        const SizedBox(
          height: 20,
        ),
        Text(errors),
      ],
    );
  }
}
