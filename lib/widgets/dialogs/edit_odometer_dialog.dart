import 'package:flutter/material.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/widgets/text_field/helpers/types.dart';
import 'package:vaz_mobile/widgets/text_field/main_text_field.dart';

Future<void> editOdometerDialog(
  BuildContext context,
  TextEditingController controller,
  FocusNode focusNode,
  Function(String) onSave,
) async {
  await showDialog(
    useRootNavigator: true,
    context: context,
    builder: (_) => _EditOdometerDialog(
      controller: controller,
      focusNode: focusNode,
      onSave: (value) => onSave(value),
    ),
  );
}

class _EditOdometerDialog extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String) onSave;

  const _EditOdometerDialog({
    Key? key,
    required this.controller,
    required this.focusNode,
    required this.onSave,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          width: 372,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              MainTextField(
                textController: controller,
                focusNode: focusNode,
                type: TextFieldType.Mileage,
                color: AppColors.light_grey.withOpacity(0.2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      controller.clear();
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      side: BorderSide(
                        color: AppColors.red,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Text(
                      'Закрыть',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      onSave(controller.text);
                      Navigator.pop(context);
                      controller.clear();
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 32,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      side: BorderSide(
                        color: AppColors.green,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Text(
                      'Сохранить',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
