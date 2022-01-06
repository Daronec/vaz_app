import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vaz_mobile/screens/dashboard/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Только альбомный режим
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}
