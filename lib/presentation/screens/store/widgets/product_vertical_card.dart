import 'package:auto_route/auto_route.dart';
import 'package:best_store/models/product_model.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/providers/products_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        padding: const EdgeInsets.all(AppSizes.md),
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
                      image: CachedNetworkImageProvider(product.images[0]),
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
                Text(
                  "Qty: ${product.stock}",
                  style: Theme.of(context).textTheme.labelSmall?.apply(color: AppColors.neutralColor),
                ),
                Text(
                  product.category.name,
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
                    Consumer(
                      builder: (context, ref, child) {
                        final isProductInWishList = ref.watch(wishListProductsProvider).products.contains(product);
                        return CircleAvatar(
                          radius: 16,
                          backgroundColor: AppColors.secondaryColor,
                          child: IconButton(
                            onPressed: () =>
                                ref.read(wishListProductsProvider.notifier).toggleProductInWishList(product),
                            icon: Icon(Icons.favorite, color: isProductInWishList ? Colors.red : AppColors.neutralColor),
                            iconSize: 16,
                          ),
                        );
                      },
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
