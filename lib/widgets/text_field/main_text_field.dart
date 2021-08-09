import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vaz_mobile/style/app_colors.dart';
import 'package:vaz_mobile/style/app_text_style.dart';

import 'helpers/switch_input_format.dart';
import 'helpers/switch_keyboard_type.dart';
import 'helpers/switch_validation.dart';
import 'helpers/types.dart';

class MainTextField extends StatefulWidget {
  final TextEditingController textController;
  final FocusNode focusNode;
  final TextFieldType type;
  final String hintText;
  final Color color;

  MainTextField({
    Key? key,
    required this.textController,
    required this.focusNode,
    required this.type,
    this.hintText = '',
    this.color = Colors.white,
  }) : super(key: key);

  @override
  _MainTextFieldState createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  final _errorText = BehaviorSubject.seeded('');
  Stream<String> get getErrorText => _errorText.stream;

  late var _mask;

  void addMaskToText() {
    _mask = switchInputFormat(widget.type);
    if (_mask != null) {
      _mask.clear();
      _mask.formatEditUpdate(TextEditingValue.empty,
          TextEditingValue(text: widget.textController.text));
      widget.textController.text = _mask.getMaskedText();
    }
  }

  @override
  void initState() {
    addMaskToText();
    super.initState();
  }

  @override
  void dispose() {
    if (_mask != null) {
      _mask.clear();
    }
    _errorText.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                enabled: true,
                controller: widget.textController,
                focusNode: widget.focusNode,
                style: Theme.of(context).textTheme.headline6,
                inputFormatters: _mask != null ? [_mask] : null,
                keyboardType: switchInputType(widget.type),
                validator: (value) {
                  final error = switchValidation(context, widget.type, value!);
                  _errorText.add(error ?? '');
                  return error;
                },
                decoration: InputDecoration(
                    errorStyle: TextStyle(
                      fontSize: 0,
                      height: 0,
                    ),
                    hintText: widget.hintText,
                    hintStyle: Theme.of(context).textTheme.headline6,
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.all(0)),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        StreamBuilder<String>(
          stream: getErrorText,
          initialData: '',
          builder: (context, snapshot) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                snapshot.data ?? '',
                style: AppTextStyles.subTitle
                    .copyWith(color: AppColors.red),
              ),
            );
          },
        ),
      ],
    );
  }
}
