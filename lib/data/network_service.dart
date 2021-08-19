import 'package:vaz_mobile/data/dio/dio_settings.dart';
import 'package:vaz_mobile/data/models/weather_model.dart';

class NetworkService {
  final _dioSetting = DioSettings();

  final apiKey = '7283f3208652fca01fe3a4821b820f16';

  Future<WeatherModel> weather(double lat, double lon) async {
    final authResponse = await _dioSetting.dio.post(
      "weather?lat=$lat&lon=$lon&lang=ru&appid=$apiKey",
    );
    return weatherModelFromJson(authResponse.toString());
  }

}
