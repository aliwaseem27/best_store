import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  final String time;
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Text(
                time,
                style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
              ),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primaryColor,
                  radius: 16,
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                SizedBox(width: AppSizes.spaceBtwItems),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),

                      // Subtitle
                      Text(
                        subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.neutralColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
