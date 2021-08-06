import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 10,
      endIndent: 10,
      height: 2,
      thickness: 2,
      color: Colors.grey.withOpacity(0.3),
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
        width: 2,
        thickness: 2,
        color: Colors.black,
        indent: 4,
        endIndent: 4,
    );
  }
}