import 'package:best_store/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/carts_provider.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class QuantityControllerButton extends ConsumerWidget {
  const QuantityControllerButton({
    super.key,
    required this.cartProduct,
  });

  final CartProduct cartProduct;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () => ref.read(cartsProvider.notifier).decreaseProductQuantity(cartProduct),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.remove,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text(cartProduct.quantity.toString()),
        const SizedBox(width: AppSizes.spaceBtwItems),
        GestureDetector(
          onTap: () => ref.read(cartsProvider.notifier).increaseProductQuantity(cartProduct),
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
