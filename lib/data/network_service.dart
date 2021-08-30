import 'package:dio/dio.dart';
import 'package:vaz_mobile/data/dio/dio_settings.dart';
import 'package:vaz_mobile/data/models/sms_model.dart';
import 'package:vaz_mobile/data/models/weather_model.dart';

class NetworkService {
  final _dioSetting = DioSettings();
  final _dio = Dio();

  final apiKey = '7283f3208652fca01fe3a4821b820f16';

  Future<WeatherModel> weather(
    double lat,
    double lon,
  ) async {
    final weatherResponse = await _dioSetting.dio.post(
      "weather?lat=$lat&lon=$lon&lang=ru&appid=$apiKey",
    );
    return weatherModelFromJson(weatherResponse.toString());
  }

  Future<SmsModel> sendSosSms(
    String mail,
    String key,
    String phone,
    String text,
    String sign,
  ) async {
    final smsResponse = await _dio.get<String>(
      'https://$mail:$key@gate.smsaero.ru/v2/sms/send?number=$phone&text=$text&sign=$sign',
    );
    print(smsResponse);
    return smsModelFromJson(smsResponse.toString());
  }
}
