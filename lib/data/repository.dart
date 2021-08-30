import 'package:vaz_mobile/data/models/sms_model.dart';
import 'package:vaz_mobile/data/models/weather_model.dart';
import 'package:vaz_mobile/data/network_service.dart';

class Repository {

  final _networkService = NetworkService();

  Future<WeatherModel> weather(double lat, double lon) async {
    return await _networkService.weather(lat, lon);
  }

  Future<SmsModel> sendSosSms(String mail, String key, String phone, String text, String sign) async {
    return await _networkService.sendSosSms(mail, key, phone, text, sign);
  }
}
