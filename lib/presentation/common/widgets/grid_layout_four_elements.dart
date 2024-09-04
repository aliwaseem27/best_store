import 'package:best_store/models/product_model.dart';
import 'package:best_store/presentation/screens/store/widgets/product_vertical_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';

class GridLayoutFourElements extends StatelessWidget {
  const GridLayoutFourElements({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSizes.spaceBtwItems,
        crossAxisSpacing: AppSizes.spaceBtwItems,
        mainAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return ProductVerticalCard(product: products[index]);
      },
    );
  }
}
