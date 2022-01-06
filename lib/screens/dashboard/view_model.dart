import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel() {
    addTextFieldListener();
    getPathTraveled();
    updateSpeed();
  }

  final odometerTextController = TextEditingController();
  final odometerFocusNode = FocusNode();

  final formKey = GlobalKey<FormState>();

  bool canUnfocus = true;

  double lat = 0.0;
  double lon = 0.0;

  final _distance = BehaviorSubject.seeded(0.0);
  final _timeDistance = BehaviorSubject.seeded(0.0);
  final _speed = BehaviorSubject.seeded(0.0);

  Stream<double> get getDistance => _distance.stream;
  Stream<double> get getTimeDistance => _timeDistance.stream;
  Stream<double> get getSpeed => _speed.stream;

  void addTextFieldListener() async {
    odometerTextController.addListener(
      () {
        if (odometerTextController.text.length == 6 && canUnfocus) {
          canUnfocus = false;
          odometerFocusNode.unfocus();
        } else if (odometerTextController.text.length == 5 && !canUnfocus) {
          canUnfocus = true;
        }
      },
    );

    odometerFocusNode.addListener(() {
      if (odometerTextController.text.isEmpty) {
        odometerTextController.text = '0';
      }
    });
  }

  void getPathTraveled() async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    List<dynamic> data = [];
    Geolocator.getPositionStream(
      desiredAccuracy: LocationAccuracy.high,
      distanceFilter: 10,
    ).listen((position) {
      lat = position.latitude; // this is your speed
      lon = position.longitude;
      data.add({
        "lat": lat,
        "lng": lon,
      }); // this is your speed
    });
    var partValueOdometer = 0.0;
    for (var i = 0; i < data.length - 1; i++) {
      partValueOdometer += calculateDistance(data[i]["lat"], data[i]["lng"],
              data[i + 1]["lat"], data[i + 1]["lng"])
          .toInt();
      _distance.add(partValueOdometer);
      _timeDistance.add(partValueOdometer);
      _prefs.setDouble("distance", partValueOdometer);
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
    Geolocator.getPositionStream(
      desiredAccuracy: LocationAccuracy.high,
      distanceFilter: 10,
    ).listen((position) {
      _speed.add(position.speed); // this is your speed
    });
  }
}
