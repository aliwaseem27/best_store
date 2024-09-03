import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTextFieldFormTheme {
  AppTextFieldFormTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColors.secondaryColor,
    errorMaxLines: 3,
    prefixIconColor: AppColors.neutralDarkColor,
    suffixIconColor: AppColors.neutralDarkColor,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizeSm, color: AppColors.neutralDarkColor),
    hintStyle: const TextStyle().copyWith(fontSize: AppSizes.fontSizeSm, color: AppColors.neutralDarkColor),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: AppColors.neutralDarkColor.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.transparent),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.transparent),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.transparent),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.transparent),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: Colors.transparent),
    ),
  );
}
