import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:intl/intl.dart';

class Formats {
  static final phoneNumber = MaskTextInputFormatter(
      mask: '+7 ### ###-##-##', filter: {"#": RegExp(r'[0-9]')});

  static final carNumber = MaskTextInputFormatter(
      mask: '########', filter: {"#": RegExp(r'[a-zA-Z0-9]')});

  static final yyyyMMddHHmmss = DateFormat('yyyy-MM-dd hh:mm:ss');

  static final ddMMyyyy = DateFormat('dd.MM.yyyy');

  static final year =
  MaskTextInputFormatter(mask: '####', filter: {'#': RegExp(r'[0-9.]')});

  static final mileage = MaskTextInputFormatter(
      mask: '######', filter: {"#": RegExp(r'[0-9]')});

 }
