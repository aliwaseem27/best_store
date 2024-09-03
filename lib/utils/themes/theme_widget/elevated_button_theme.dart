import 'package:best_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_sizes.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevetedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      minimumSize: const Size(56, 56),
      textStyle: const TextStyle(color: Colors.white),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );
}
