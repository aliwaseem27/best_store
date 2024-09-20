import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/common/popups/full_screen_message.dart';
import 'package:best_store/presentation/screens/cart/widgets/total_price_group.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/image_strings.dart';
import 'widgets/checkout_info_tile.dart';
import 'widgets/horizontal_product_card.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Order List
              Text(
                "Order List",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Consumer(
                builder: (context, ref, child) {
                  final products = ref.watch(allProductsProvider);
                  return ListView.separated(
                    key: UniqueKey(),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return products.when(data: (data) {
                        return HorizontalProductCard(
                          product: products.value!.products[index],
                        );
                      }, error: (error, st) {
                        return Text(error.toString());
                      }, loading: () {
                        return const Center(child: CircularProgressIndicator());
                      });
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppSizes.sm);
                    },
                  );
                },
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),
              // Shipping address
              Text(
                "Shipping Address",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Home",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: Icons.home_filled,
                onTap: () => context.router.push(const ShippingAddressRoute()),
              ),

              // Payment method
              const SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                "Payment Method",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Cash On Delivery",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: FontAwesomeIcons.handHoldingDollar,
                onTap: () => context.router.push(const PaymentOptionsRoute()),
              ),

              // Shipping Type
              const SizedBox(height: AppSizes.spaceBtwSections),
              Text(
                "Shipping Type",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              CheckoutInfoTile(
                title: "Standard",
                subtitle: "Lorem Ipsum is simply",
                leadingIcon: FontAwesomeIcons.handHoldingHand,
                onTap: () => context.router.push(const ShippingTypeRoute()),
              ),

              // Total Price Group
              const SizedBox(height: AppSizes.spaceBtwSections),
              const TotalPriceGroup(),

              // Continue to Payment button
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => FullScreenMessage.showSuccessMessage(context, "Payment Successful"),
                  child: const Text("Continue to Payment"),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
