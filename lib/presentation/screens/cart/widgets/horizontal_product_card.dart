import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    super.key,
    required this.productName,
    required this.productImage,
    required this.productCategory,
  });

  final String productName;
  final String productImage;
  final String productCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      child: Row(
        children: [
          // Product Image
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                margin: const EdgeInsets.only(right: AppSizes.spaceBtwItems),
                child: Image.asset(productImage),
              ),
            ),
          ),

          // Product Details
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Product Name
                Text(
                  productName,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),

                // Product Size & quantity
                Text(
                  "Qty: 1",
                  style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                ),

                // Product Category
                Text(
                  productCategory,
                  style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                ),

                // Product Price
                Text(
                  "\$800",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
