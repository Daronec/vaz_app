import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:vaz_mobile/data/dio/error_handler.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  static final mainServer = 'http://api.openweathermap.org/data/2.5/';
  final _errorHandler = ErrorHandler();

  Dio dio = Dio(
    BaseOptions(
      baseUrl: mainServer,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ),
  );

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;
    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioError error, handler) {
          if (error.type == DioErrorType.connectTimeout) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.message.contains('SocketException:')) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.response!.statusCode == 401) {
            _errorHandler.showError(
              DioError(
                error: ErrorHandlerType.auth,
                requestOptions: error.requestOptions,
              ),
            );
          }
          return handler.next(
            DioError(
              error: jsonDecode(error.response!.data)['message'],
              response: Response(
                statusCode: error.response!.statusCode,
                statusMessage: error.response!.statusMessage,
                requestOptions: error.requestOptions,
              ),
              requestOptions: error.requestOptions,
            ),
          ); //continue
        },
      ),
    );
    if (kDebugMode) {
      interceptors.add(LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ));
    }
  }
}
