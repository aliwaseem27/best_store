import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/section_title.dart';
import 'package:best_store/presentation/screens/profile/widgets/order_status_stepper.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/products_provider.dart';
import '../../../utils/constants/image_strings.dart';
import '../../common/widgets/horizontal_product_tile.dart';
import '../cart/widgets/horizontal_product_card.dart';

@RoutePage()
class TrackOrderScreen extends StatelessWidget {
  TrackOrderScreen({super.key});

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
                        return HorizontalProductTile(
                          productName: data.products[index].title,
                          productImage: data.products[index].images.first,
                          productCategory: data.products[index].category.name,
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
            ],
          ),
        ),
      ),
    );
  }
}
