import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.onTap,
  });

  final String title;
  final IconData leadingIcon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.secondaryColor,
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
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
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                )
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
