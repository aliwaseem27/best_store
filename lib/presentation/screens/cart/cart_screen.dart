import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/common/widgets/horizontal_product_tile.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/providers/carts_provider.dart';
import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../utils/constants/app_sizes.dart';
import 'widgets/delete_product_slider_action.dart';
import 'widgets/promo_code_input_field.dart';
import 'widgets/quantity_controller_button.dart';
import 'widgets/total_price_group.dart';

@RoutePage()
class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(cartsProvider);
    print(cartProducts);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          scrolledUnderElevation: 0,
          title: const Text("My Cart"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
              left: AppSizes.defaultSpace,
              right: AppSizes.defaultSpace,
              top: AppSizes.defaultSpace,
              bottom: AppSizes.sm),
          child: SlidableAutoCloseBehavior(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Cart Products List
                  ListView.separated(
                    key: UniqueKey(),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cartProducts.totalProducts,
                    itemBuilder: (context, index) {
                      return Slidable(
                        key: UniqueKey(),
                        endActionPane: ActionPane(
                          extentRatio: 0.2,
                          motion: const ScrollMotion(),
                          dismissible: DismissiblePane(
                            closeOnCancel: true,
                            onDismissed: () {
                              setState(() {
                                // products.removeAt(index);
                              });
                            },
                          ),
                          dragDismissible: true,
                          children: [
                            DeleteProductSliderAction(
                              onTap: () {
                                Slidable.of(context)?.close();
                                return ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Delete'),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        child: HorizontalProductTile(
                          productName: cartProducts.products[index].title,
                          productImage: cartProducts.products[index].thumbnail,
                          productCategory: "Clothing",
                          actionWidget: SizedBox(
                            height: 32,
                            child: QuantityControllerButton(
                              cartProduct: cartProducts.products[index],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppSizes.sm);
                    },
                  ),

                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // Promo Code
                  const PromoCodeInputField(),

                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // Total Price
                  const TotalPriceGroup(),

                  const SizedBox(height: AppSizes.spaceBtwSections),
                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => context.router.push(CheckoutRoute()),
                      child: const Text("Checkout"),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
