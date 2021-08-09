import 'package:flutter/material.dart';

import 'types.dart';

String? switchValidation(
  BuildContext context,
  TextFieldType fieldType,
  String value,
) {
  switch (fieldType) {
    case TextFieldType.PhoneNumber:
      if (value.isEmpty) {
        return "Заполните поле";
      } else if (value.length < 16) {
        return "Телефон указан не полностью";
      }
      break;


    case TextFieldType.Year:
      if (value.isNotEmpty && value.length < 4) {
        return "Год выпуска должен состоять из 4х символов";
      }
      break;

    case TextFieldType.CarNumber:
      if (value.isNotEmpty && value.length < 6) {
        return "Гос. номер должен состоять минимум из 6 символов";
      }
      break;

    default:
      if (value.isEmpty) {
        return null;
      }
      break;
  }
  return null;
}
