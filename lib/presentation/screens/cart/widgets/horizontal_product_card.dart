import 'package:best_store/models/product_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({
    super.key,
    required this.product,
  });

  final Product product;

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
                child: CachedNetworkImage(imageUrl: product.images.first),
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
                  product.title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),

                // Product Size & quantity
                Text(
                  "Qty: 1",
                  style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                ),

                // Product Category
                Text(
                  product.category.name,
                  style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                ),

                // Product Price
                Text(
                  "\$${product.price}",
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
