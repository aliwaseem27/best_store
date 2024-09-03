import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/horizontal_product_tile.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';
import '../widgets/product_action_button.dart';

@RoutePage(name: 'ActiveOrdersRoute')
class ActiveOrdersTab extends StatelessWidget {
  const ActiveOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "name": "Sport Shoes Sport Shoes ",
        "image": ImageStrings.productImage1,
        "category": "Clothing",
      },
      {
        "name": "Black Jacket",
        "image": ImageStrings.productImage3,
        "category": "Clothing",
      },
      {
        "name": "Cricket Bat",
        "image": ImageStrings.productImage30,
        "category": "Sports",
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Cart Products List
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return HorizontalProductTile(
                  productName: products[index]["name"]!,
                  productImage: products[index]["image"]!,
                  productCategory: products[index]["category"]!,
                  actionWidget: ProductActionButton(
                    buttonText: "Track Order",
                    onPressed: () {},
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: AppSizes.sm);
              },
            ),
          ],
        ),
      ),
    );
  }
}
