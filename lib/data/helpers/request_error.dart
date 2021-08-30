import 'package:dio/dio.dart';

String requestError(dynamic error) {
  if (error is DioError) {
    if (error.message.toString().toLowerCase().contains('null')) {
      return 'Server error.';
    } else {
      return error.message.toString();
    }
  } else {
    return error.toString();
  }
}
