import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class FilterListItem extends StatelessWidget {
  const FilterListItem({
    super.key,
    required this.selected,
    required this.title,
    this.onTap,
  });

  final bool selected;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppSizes.sm),
        decoration: BoxDecoration(
          color: selected ? AppColors.primaryColor : AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: selected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
