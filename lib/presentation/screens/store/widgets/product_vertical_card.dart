import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        color: AppColors.secondaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageStrings.productImage11),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Samsung S20",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "Qty: 1",
                style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
              ),
              Text(
                "Electronics",
                style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "\$800",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: AppColors.secondaryColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      iconSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
