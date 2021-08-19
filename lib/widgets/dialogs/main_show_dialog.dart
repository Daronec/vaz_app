import 'package:flutter/material.dart';

Future<void> mainShowDialog(
  BuildContext context,
  Widget widget,
) async {
  await showDialog(
    useRootNavigator: true,
    context: context,
    builder: (_) => Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: widget,
    ),
  );
}
