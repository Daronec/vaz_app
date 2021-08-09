import 'package:flutter/material.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel() {
    addTextFieldListener();
  }

  final odometerTextController = TextEditingController();
  final odometerFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  bool canUnfocus = true;

  void addTextFieldListener() async {
    odometerTextController.addListener(
          () {
        if (odometerTextController.text.length == 6 && canUnfocus) {
          canUnfocus = false;
          odometerFocusNode.unfocus();
        } else if (odometerTextController.text.length == 5 && !canUnfocus) {
          canUnfocus = true;
        }
      },
    );

    odometerFocusNode.addListener(() {
      if (odometerTextController.text.isEmpty) {
        odometerTextController.text = '0';
      }
    });
  }
}
