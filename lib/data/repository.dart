import 'package:vaz_mobile/data/models/weather_model.dart';
import 'package:vaz_mobile/data/network_service.dart';

class Repository {

  final _networkService = NetworkService();

Future<WeatherModel> weather(double lat, double lon) async {
    return await _networkService.weather(lat, lon);
  }
}
