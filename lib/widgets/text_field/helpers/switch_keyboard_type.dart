import 'package:flutter/material.dart';

import 'types.dart';

TextInputType switchInputType(TextFieldType fieldType) {
  switch (fieldType) {
    case TextFieldType.PhoneNumber:
      return TextInputType.phone;

    case TextFieldType.Year:
      return TextInputType.number;

    case TextFieldType.Mileage:
      return TextInputType.number;

    default:
      return TextInputType.text;
  }
}
