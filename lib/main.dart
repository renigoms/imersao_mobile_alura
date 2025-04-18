import 'package:flutter/material.dart';
import 'package:flutter_techtaste/Data/restaurant_data.dart';
import 'package:flutter_techtaste/UI/_core/app_theme.dart';
import 'package:flutter_techtaste/UI/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Garante que as coisas assicronas serão executadas primeiro antes de rodar a aplicação
  RestaurantData restaurantData = RestaurantData();
  await restaurantData.getRestaurants();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => restaurantData)],
      child: MyApp(),
    ),
  );
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
