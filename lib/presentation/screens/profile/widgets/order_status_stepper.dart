import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

class OrderStatusStepper extends StatelessWidget {
  final List<StepData> steps = [
    StepData(AppStrings.orderPlaced, "Expected 12 Sep 2024", true),
    StepData(AppStrings.orderInProgress, "Expected 12 Sep 2024", true),
    StepData(AppStrings.orderShipped, "Expected 12 Sep 2024", false),
    StepData(AppStrings.orderDelivered, "Expected 12 Sep 2024", false),
  ];

  OrderStatusStepper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: steps.asMap().entries.map((entry) {
        int index = entry.key;
        StepData step = entry.value;
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Icon(
                    Icons.check_circle,
                    color: step.isCompleted ? AppColors.primaryColor : AppColors.primaryColor.withOpacity(0.2),
                    size: AppSizes.iconLg,
                  ),
                ),
                if (index != steps.length - 1)
                  // Vertical line for the timeline
                  Container(
                    height: 40,
                    width: 2,
                    color: index < steps.indexWhere((e) => !e.isCompleted)
                        ? AppColors.primaryColor
                        : AppColors.primaryColor.withOpacity(0.2),
                  ),
              ],
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            // Step details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  step.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    // color: step.isCompleted ? Colors.black : AppColors.neutralColor,
                  ),
                ),
                Text(
                  step.subtitle,
                  style: const TextStyle(
                    color: AppColors.neutralColor,
                  ),
                ),
              ],
            ),
          ],
        );
      }).toList(),
    );
  }
}

class StepData {
  final String title;
  final String subtitle;
  final bool isCompleted;

  StepData(this.title, this.subtitle, this.isCompleted);
}
