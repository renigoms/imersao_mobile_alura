import 'package:flutter/material.dart';
import 'package:flutter_techtaste/UI/_core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        // Faz com que os widgets sejam empilhados
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', width: 192),
                  Column(
                    children: [
                      Text(
                        "Um parceiro inovador para sua",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "melhor experiência culinaria!",
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Bora!"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
