import 'package:flutter/material.dart';
import 'package:flutter_techtaste/UI/_core/app_colors.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  const CategoryWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(color: AppColors.backgroundLightColor),
    );
  }
}
