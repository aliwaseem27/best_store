import 'package:best_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: AppColors.neutralColor,
              borderRadius: BorderRadius.circular(7),
              valueColor: const AlwaysStoppedAnimation(AppColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
