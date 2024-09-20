import 'package:best_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSelectorWidget extends StatefulWidget {
  const RatingSelectorWidget({super.key});

  @override
  State<RatingSelectorWidget> createState() => _RatingSelectorWidgetState();
}

class _RatingSelectorWidgetState extends State<RatingSelectorWidget> {
  double selectedRating = 3.5;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBar.builder(
          updateOnDrag: true,
          unratedColor: AppColors.secondaryColor,
          glow: false,
          initialRating: selectedRating,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              selectedRating = rating;
            });
          },
        ),
        Text(
          selectedRating.toString(),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
