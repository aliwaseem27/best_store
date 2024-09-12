import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/section_title.dart';
import 'package:best_store/presentation/screens/profile/widgets/order_status_stepper.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/image_strings.dart';
import '../../common/widgets/horizontal_product_tile.dart';

@RoutePage()
class TrackOrderScreen extends StatelessWidget {
  TrackOrderScreen({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.trackOrder),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Delivery Address
              const SectionTitle(title: AppStrings.deliveryAddress, showButton: false),
              Text(
                AppStrings.deliveryAddressFull,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.neutralColor),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                  color: Colors.red,
                  image: const DecorationImage(
                    image: AssetImage(ImageStrings.mapImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Order Status
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order #SMT53237653",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    OrderStatusStepper(),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Product List
              const SectionTitle(title: AppStrings.productList, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return HorizontalProductTile(
                    productName: products[index]["name"]!,
                    productImage: products[index]["image"]!,
                    productCategory: products[index]["category"]!,
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: AppSizes.sm);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
