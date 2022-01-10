import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel() {
    getPathTraveled();
  }

  final odometerTextController = TextEditingController();
  final odometerFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  double lat = 0.0;
  double lon = 0.0;
  Timer? _autoRefreshTimer;
  Location location = new Location();
  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  final _distance = BehaviorSubject.seeded('0.0');
  final _timeDistance = BehaviorSubject.seeded('0.0');
  final _speed = BehaviorSubject.seeded('0');

  Stream<String> get getDistance => _distance.stream;

  Stream<String> get getTimeDistance => _timeDistance.stream;

  Stream<String> get getSpeed => _speed.stream;

  void editTimeOdometer(String value) async {
    _timeDistance.add(value);
  }

  void getPathTraveled() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<dynamic> data = [];
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    // _autoRefreshTimer = Timer.periodic(
    //   Duration(milliseconds: 1000),
    //   (timer) async {
    //     _locationData = await location.getLocation();
    //     lat = _locationData!.latitude!;
    //     lon = _locationData!.longitude!;
    //     data.add({
    //       "lat": lat,
    //       "lng": lon,
    //     });
    //     var dist = 0.0;
    //     for (var i = 0; i < data.length - 1; i++) {
    //       dist += calculateDistance(data[i]["lat"], data[i]["lng"],
    //           data[i + 1]["lat"], data[i + 1]["lng"]);
    //       _distance.add(dist.toStringAsFixed(1));
    //       _timeDistance.add(dist.toStringAsFixed(1));
    //       _prefs.setDouble("distance", dist);
    //     }
    //     var speed = _locationData!.speed! * 3.6;
    //     _speed.add(speed.toStringAsFixed(2));
    //   },
    // );
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
    _distance.add('');
  }

  void clearTimeDistance() {
    _timeDistance.add('');
  }

  void stopRefresh() {
    _autoRefreshTimer!.cancel();
  }
}
