import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel() {
    getPathTraveled();
    updateSpeed();
  }

  final odometerTextController = TextEditingController();
  final odometerFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  bool canUnfocus = true;

  double lat = 0.0;
  double lon = 0.0;
  late LocationSettings locationSettings;
  late LocationSettings locationSettingsWithSpeed;

  final _distance = BehaviorSubject.seeded(0.0);
  final _timeDistance = BehaviorSubject.seeded(0.0);
  final _speed = BehaviorSubject.seeded(0);

  Stream<double> get getDistance => _distance.stream;

  Stream<double> get getTimeDistance => _timeDistance.stream;

  Stream<int> get getSpeed => _speed.stream;

  void editTimeOdometer(String value) async {
    _timeDistance.add(double.tryParse(value)!);
  }

  void getPathTraveled() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (defaultTargetPlatform == TargetPlatform.android) {
      locationSettings = AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
        forceLocationManager: true,
        intervalDuration: const Duration(seconds: 10),
      );
      locationSettingsWithSpeed = AndroidSettings(
        accuracy: LocationAccuracy.high,
        forceLocationManager: true,
        intervalDuration: const Duration(milliseconds: 300),
      );
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      locationSettings = AppleSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
        pauseLocationUpdatesAutomatically: true,
      );
      locationSettingsWithSpeed = AppleSettings(
        accuracy: LocationAccuracy.high,
      );
    } else {
      locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );
      locationSettingsWithSpeed = AndroidSettings(
        accuracy: LocationAccuracy.high,
        forceLocationManager: true,
        intervalDuration: const Duration(milliseconds: 300),
      );
    }
    List<dynamic> data = [];
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((position) {
      lat = position.latitude;
      lon = position.longitude;
      data.add({
        "lat": lat,
        "lng": lon,
      }); // this
      print(data);
    });
    var dist = 0.0;
    for (var i = 0; i < data.length - 1; i++) {
      dist += calculateDistance(data[i]["lat"], data[i]["lng"],
          data[i + 1]["lat"], data[i + 1]["lng"]);
      _distance.add(dist);
      _timeDistance.add(dist);
      _prefs.setDouble("distance", dist);
    }
  }

  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  void clearDistance() {
    _distance.add(0.0);
  }

  void clearTimeDistance() {
    _timeDistance.add(0.0);
  }

  void updateSpeed() async {
    _speed.add(0);
    Geolocator.getPositionStream(locationSettings: locationSettingsWithSpeed)
        .listen((position) {
      print(position.speed.round());
      _speed.add((position.speed * 3.6).round()); // this is your speed
    });
  }
}
