import 'package:best_store/presentation/screens/store/widgets/rating_progress_indicator.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import 'rating_indicator.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text("3.5", style: Theme.of(context).textTheme.displayLarge),
                const TRatingBarIndicator(rating: 3.5),
                Text("(107 Reviews)", style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          const VerticalDivider(
            width: 2,
            thickness: 2,
            color: AppColors.neutralColor,
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
          const Expanded(
            flex: 1,
            child: Column(
              children: [
                TRatingProgressIndicator(text: "5", value: 1.0),
                TRatingProgressIndicator(text: "4", value: 0.8),
                TRatingProgressIndicator(text: "3", value: 0.6),
                TRatingProgressIndicator(text: "2", value: 0.4),
                TRatingProgressIndicator(text: "1", value: 0.2),
              ],
            ),
          )
        ],
      ),
    );
  }
}
