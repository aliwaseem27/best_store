import 'package:best_store/models/product_model.dart';
import 'package:best_store/presentation/screens/store/widgets/rating_progress_indicator.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import 'rating_indicator.dart';

class OverallProductRating extends StatefulWidget {
  const OverallProductRating({
    super.key,
    required this.rating,
    required this.reviews,
  });

  final double rating;
  final List<Review> reviews;

  @override
  State<OverallProductRating> createState() => _OverallProductRatingState();
}

class _OverallProductRatingState extends State<OverallProductRating> {
  Map<String, int> ratings = {
    "5": 0,
    "4": 0,
    "3": 0,
    "2": 0,
    "1": 0,
  };

  void calculateRatings() {
    for (int i = 0; i < widget.reviews.length; i++) {
      ratings[widget.reviews[i].rating.toString()] = ratings[widget.reviews[i].rating.toString()]! + 1;
    }
  }

  @override
  void initState() {
    calculateRatings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Text(widget.rating.toString(), style: Theme.of(context).textTheme.displayLarge),
                const TRatingBarIndicator(rating: 3.5),
                Text("(${widget.reviews.length} Reviews)", style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
          const VerticalDivider(
            width: 2,
            thickness: 2,
            color: AppColors.neutralColor,
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                TRatingProgressIndicator(text: "5", value: ratings["5"]! / widget.reviews.length),
                TRatingProgressIndicator(text: "4", value: ratings["4"]! / widget.reviews.length),
                TRatingProgressIndicator(text: "3", value: ratings["3"]! / widget.reviews.length),
                TRatingProgressIndicator(text: "2", value: ratings["2"]! / widget.reviews.length),
                TRatingProgressIndicator(text: "1", value: ratings["1"]! / widget.reviews.length),
              ],
            ),
          )
        ],
      ),
    );
  }
}
