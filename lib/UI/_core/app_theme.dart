import 'package:flutter/material.dart';
import 'package:flutter_techtaste/UI/_core/app_colors.dart';

abstract class AppTheme {
  static ThemeData appTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.black),
        backgroundColor: WidgetStateColor.resolveWith((state) {
          if (state.contains(WidgetState.disabled)) {
            return Colors.grey;
          } else if (state.contains(WidgetState.pressed)) {
            return const Color.fromARGB(172, 255, 164, 89);
          }
          return AppColors.mainColor;
        }),
      ),
    ),
  );
}
