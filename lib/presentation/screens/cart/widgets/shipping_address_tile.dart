import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    this.onTap,
    required this.selected,
  });

  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final Function()? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Leading Icon
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    leadingIcon,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
                SizedBox(width: AppSizes.spaceBtwItems),

                // Title Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.titleSmall?.apply(color: AppColors.neutralColor),
                    ),
                  ],
                ),
              ],
            ),

            // Trailing Arrow
            selected ? Icon(Icons.radio_button_checked, color: AppColors.primaryColor) : Icon(Icons.radio_button_off),
          ],
        ),
      ),
    );
  }
}
