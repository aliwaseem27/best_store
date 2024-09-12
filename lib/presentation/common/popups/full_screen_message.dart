import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class FullScreenMessage {
  static showSuccessMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          ),
          content: Container(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle,
                  color: AppColors.primaryColor,
                  size: 128,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                Text(
                  message,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  AppStrings.placeholder,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.neutralColor),
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Okay'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static showErrorMessage(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          ),
          content: Container(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.check_circle,
                  color: AppColors.warning,
                  size: 128,
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                Text(
                  message,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  AppStrings.placeholder,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.neutralColor),
                ),
                SizedBox(height: AppSizes.spaceBtwSections),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.neutralColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Okay'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
