import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

class DefaultButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onPress;
  final Color? color;
  final Color? colorText;
  final bool? isActive;

  const DefaultButton({
    Key? key,
    this.title,
    this.isActive = true,
    this.onPress,
    this.color = AppColors.orange,
    this.colorText = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 19),
          backgroundColor: isActive! ? color : AppColors.orange,
        ),
        onPressed: () => onPress!(),
        child: Center(
          child: Text(
            title!,
            style: AppTextStyles.subTitle,
          ),
        ));
  }
}
