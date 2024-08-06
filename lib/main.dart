import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
//import 'OnboardingScreen.dart';
import 'home.dart';

void main() {
  runApp(
    DevicePreview(
      // enabled: 
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      //home: OnboardingScreen(),
      home: HomeScreen(),
    );
  }
}
