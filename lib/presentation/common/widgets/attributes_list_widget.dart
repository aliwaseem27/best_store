import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class AttributesList extends StatelessWidget {
  const AttributesList({
    super.key,
    required this.optionList,
    required this.title,
    required this.selectedIndex,
    this.onTap,
  });

  final List<String> optionList;
  final String title;
  final int selectedIndex;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: AppSizes.spaceBtwItems),
        Wrap(
          spacing: AppSizes.spaceBtwItems,
          children: [
            for (int i = 0; i < optionList.length; i++)
              GestureDetector(
                onTap: onTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                  decoration: BoxDecoration(
                    color: i == selectedIndex ? AppColors.primaryColor : AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(AppSizes.sm),
                  ),
                  child: Text(
                    optionList[i],
                    style: TextStyle(color: i == selectedIndex ? Colors.white : Colors.black),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
