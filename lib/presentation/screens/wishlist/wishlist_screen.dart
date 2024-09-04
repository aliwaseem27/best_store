import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/grid_layout_four_elements.dart';
import 'package:best_store/presentation/screens/store/widgets/product_vertical_card.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';

@RoutePage()
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wishlist"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace,
              top: AppSizes.defaultSpace,
              bottom: AppSizes.sm),
          child: SingleChildScrollView(
            child: GridLayoutFourElements(
              products: [],
            ),
          ),
        ),
      ),
    );
  }
}
