import 'package:best_store/models/cart_model.dart';
import 'package:best_store/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/carts_provider.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ProductDetailsBottomButton extends ConsumerWidget {
  const ProductDetailsBottomButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace, vertical: AppSizes.md),
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(AppSizes.borderRadiusLg),
          topRight: Radius.circular(AppSizes.borderRadiusLg),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Price",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.neutralColor)),
                Text("\$${product.price}",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () => ref.read(cartsProvider.notifier).addProduct(CartProduct.fromProduct(product)),
              child: const Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }
}
