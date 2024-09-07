import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class CheckoutInfoTile extends StatelessWidget {
  const CheckoutInfoTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData leadingIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
        ),
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Leading Icon
                Container(
                  decoration: const BoxDecoration(
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
                const SizedBox(width: AppSizes.spaceBtwItems),

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
            const Icon(Icons.chevron_right)
          ],
        ),
      ),
    );
  }
}
