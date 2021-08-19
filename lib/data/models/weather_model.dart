import 'dart:convert';

import 'package:vaz_mobile/data/models/clouds.dart';
import 'package:vaz_mobile/data/models/coord.dart';
import 'package:vaz_mobile/data/models/main.dart';
import 'package:vaz_mobile/data/models/systems_info.dart';
import 'package:vaz_mobile/data/models/weather.dart';
import 'package:vaz_mobile/data/models/wind.dart';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
  WeatherModel({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });

  final Coord? coord;
  final List<Weather>? weather;
  final String? base;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    coord: Coord.fromJson(json["coord"]),
    weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
    base: json["base"],
    main: Main.fromJson(json["main"]),
    visibility: json["visibility"],
    wind: Wind.fromJson(json["wind"]),
    clouds: Clouds.fromJson(json["clouds"]),
    dt: json["dt"],
    sys: Sys.fromJson(json["sys"]),
    timezone: json["timezone"],
    id: json["id"],
    name: json["name"],
    cod: json["cod"],
  );

  Map<String, dynamic> toJson() => {
    "coord": coord!.toJson(),
    "weather": List<dynamic>.from(weather!.map((x) => x.toJson())),
    "base": base,
    "main": main!.toJson(),
    "visibility": visibility,
    "wind": wind!.toJson(),
    "clouds": clouds!.toJson(),
    "dt": dt,
    "sys": sys!.toJson(),
    "timezone": timezone,
    "id": id,
    "name": name,
    "cod": cod,
  };
}












