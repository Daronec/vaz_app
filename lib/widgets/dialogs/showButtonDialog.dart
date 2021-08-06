import 'package:flutter/material.dart';

Future<void> showButtonDialog(
  BuildContext context,
  List<Widget>? children,
) async {
  await showDialog(
    useRootNavigator: true,
    context: context,
    builder: (_) => _ButtonDialog(children: children),
  );
}

class _ButtonDialog extends StatelessWidget {
  final List<Widget>? children;

  const _ButtonDialog({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SizedBox(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children!,
        ),
      ),
    );
  }
}
