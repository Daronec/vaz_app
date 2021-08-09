import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:vaz_mobile/style/formats.dart';

import 'types.dart';

MaskTextInputFormatter? switchInputFormat(TextFieldType fieldType) {
  switch (fieldType) {
    case TextFieldType.PhoneNumber:
      return Formats.phoneNumber;

    case TextFieldType.CarNumber:
      return Formats.carNumber;

    case TextFieldType.Year:
      return Formats.year;

    case TextFieldType.Mileage:
      return Formats.mileage;

    default:
      return null;
  }
}
