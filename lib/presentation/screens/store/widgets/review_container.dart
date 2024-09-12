import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/image_strings.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(AppSizes.sm),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Column(
        children: [
          // Photo and Name
          ListTile(
            leading: Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImageStrings.person2),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              "Thomas Alva",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "1 hour ago",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
            ),
            trailing: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.star, color: Colors.amberAccent, size: 16),
                Text("4.7"),
              ],
            ),
          ),

          // Review Text
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: ReadMoreText(
              AppStrings.placeholderLong,
              trimLines: 3,
              trimMode: TrimMode.Line,
              colorClickableText: AppColors.primaryColor,
            ),
          ),

          // Thumbs up/down buttons
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_up,
                    color: AppColors.primaryColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.thumb_down,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
