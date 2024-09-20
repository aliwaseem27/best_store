import 'package:best_store/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';

class ReviewContainer extends StatelessWidget {
  const ReviewContainer({
    super.key,
    required this.review,
  });

  final Review review;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Photo and Name
          ListTile(
            leading: Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImageStrings.personImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              review.reviewerName,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "${review.date.day}/${review.date.month}/${review.date.year}",
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, color: Colors.amberAccent, size: 16),
                Text(review.rating.toString()),
              ],
            ),
          ),

          // Review Text
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
            child: ReadMoreText(
              review.comment,
              trimLines: 3,
              trimMode: TrimMode.Line,
              colorClickableText: AppColors.primaryColor,
            ),
          ),

          // Thumbs up/down buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
