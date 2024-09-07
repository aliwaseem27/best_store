import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/cart/widgets/total_price_group.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/image_strings.dart';
import 'widgets/checkout_info_tile.dart';
import 'widgets/horizontal_product_card.dart';

@RoutePage()
class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  final List<Map<String, String>> products = [
    {
      "name": "Sport Shoes",
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
              ListView.separated(
                key: UniqueKey(),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return HorizontalProductCard(
                    productName: products[index]["name"]!,
                    productImage: products[index]["image"]!,
                    productCategory: products[index]["category"]!,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppSizes.sm);
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
                onTap: () => context.router.push(ShippingAddressRoute()),
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
                onTap: () => context.router.push(PaymentOptionsRoute()),
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
                onTap: () => context.router.push(ShippingTypeRoute()),
              ),

              // Total Price Group
              const SizedBox(height: AppSizes.spaceBtwSections),
              const TotalPriceGroup(),

              // Continue to Payment button
              const SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
