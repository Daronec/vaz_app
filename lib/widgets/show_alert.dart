import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_text_style.dart';
import 'package:vaz_mobile/widgets/default_button.dart';

void showAlert(
    context,
    String message, {
      String? description,
      String? firstButton,
      String? secondButton,
      Function? pressedFirstButton,
      Function? pressedSecondButton,
    }) async {
  return await showModalBottomSheet(
      context: context,
      barrierColor: Colors.black45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return AlertBody(
          error: message,
          description: description,
          firstButton: firstButton,
          secondButton: secondButton,
          pressedFirstButton: pressedFirstButton,
          pressedSecondButton: pressedSecondButton,
        );
      });
}

class AlertBody extends StatelessWidget {
  final String? error;
  final String? description;
  final String? firstButton;
  final String? secondButton;
  final Function? pressedFirstButton;
  final Function? pressedSecondButton;

  const AlertBody({
    Key? key,
    this.error,
    this.description,
    this.firstButton,
    this.secondButton,
    this.pressedFirstButton,
    this.pressedSecondButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            error!,
            style: AppTextStyles.subTitle,
          ),
          const SizedBox(height: 8),
          Text(
            description!,
            textAlign: TextAlign.center,
            style: AppTextStyles.subTitle,
          ),
          const SizedBox(height: 24),
          DefaultButton(
            title: firstButton,
            onPress: () {
              pressedFirstButton!();
            },
            isActive: true,
          ),
          if (secondButton != null) const SizedBox(height: 24),
          if (secondButton != null)
            InkWell(
              onTap: () {
                pressedSecondButton!();
              },
              child: Text(
                secondButton!,
                style: AppTextStyles.subTitle,
              ),
            ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}