import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/products_provider.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../common/widgets/horizontal_product_tile.dart';
import '../widgets/product_action_button.dart';

@RoutePage(name: 'CompletedOrdersRoute')
class CompletedOrdersTab extends ConsumerWidget {
  const CompletedOrdersTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(allProductsProvider);
    return products.when(data: (data) {
      return Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Cart Products List
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return HorizontalProductTile(
                    productName: data.products[index].title,
                    productImage: data.products[index].images.first,
                    productCategory: data.products[index].category.name,
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
    }, error: (error, st) {
      return Text(error.toString());
    }, loading: () {
      return const Center(child: CircularProgressIndicator());
    });
  }
}
