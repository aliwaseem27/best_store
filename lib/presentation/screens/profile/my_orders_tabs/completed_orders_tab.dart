import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../common/widgets/horizontal_product_tile.dart';
import '../widgets/product_action_button.dart';

@RoutePage(name: 'CompletedOrdersRoute')
class CompletedOrdersTab extends StatelessWidget {
  const CompletedOrdersTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        "name": "Cricket Bat",
        "image": ImageStrings.productImage30,
        "category": "Sports",
      },
      {
        "name": "Office Chair",
        "image": ImageStrings.productImage40,
        "category": "Furniture",
      },
      {
        "name": "Bedroom Lamb",
        "image": ImageStrings.productImage33,
        "category": "Furniture",
      },
      {
        "name": "Full Size Bed",
        "image": ImageStrings.productImage32,
        "category": "Furniture",
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
                    buttonText: "Leave Review",
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
