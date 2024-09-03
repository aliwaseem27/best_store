import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class CategoryVerticalWidget extends StatelessWidget {
  const CategoryVerticalWidget({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 64,
          height: 64,
          padding: const EdgeInsets.all(AppSizes.md),
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Image(
            image: AssetImage(image),
            fit: BoxFit.cover,
            color: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          width: 64,
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelLarge,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
