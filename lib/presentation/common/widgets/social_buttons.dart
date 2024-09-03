import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.xs,
              horizontal: AppSizes.sm,
            ),
            child: SizedBox(
              height: 32,
              width: 32,
              child: Image.asset(ImageStrings.facebookLogo),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
            ),
            padding: const EdgeInsets.symmetric(vertical: AppSizes.sm, horizontal: AppSizes.md),
            child: SizedBox(
              height: 32,
              width: 32,
              child: Image.asset(ImageStrings.googleLogo),
            ),
          ),
        ),
      ],
    );
  }
}
