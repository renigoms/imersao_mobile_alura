import 'package:flutter/material.dart';
import 'package:flutter_techtaste/UI/_core/app_theme.dart';
import 'package:flutter_techtaste/UI/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
