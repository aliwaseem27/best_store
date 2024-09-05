import 'package:auto_route/auto_route.dart';
import 'package:best_store/models/enums.dart';
import 'package:best_store/models/product_model.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.router.push(ProductDetailsRoute(product: product)),
      child: Container(
        padding: EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          color: AppColors.secondaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  // height: 100,
                  // width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(product.images[0]),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                // Text(
                //   "Qty: 1",
                //   style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                // ),
                Text(
                  product.category.name.name,
                  style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "\$${product.price}",
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
      ),
    );
  }
}
