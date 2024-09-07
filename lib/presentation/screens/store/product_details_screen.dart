import 'package:auto_route/auto_route.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../models/product_model.dart';
import '../../../providers/products_provider.dart';
import '../../common/widgets/attributes_list_widget.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final List<String> availableColors = ["White", "Black", "Blue", "Red"];
    final List<String> availableSizes = ["XS", "S", "M", "L", "XL", "XXL"];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor,
                child: IconButton(
                  color: AppColors.neutralDarkColor,
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 16,
                  ),
                  onPressed: () => context.router.maybePop(),
                ),
              ),
              Text("Product Details"),
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor,
                child: Consumer(
                  builder: (context, ref, child) {
                    final isProductInWishList = ref.watch(wishListProductsProvider).products.contains(product);
                    return IconButton(
                      color: isProductInWishList ? Colors.red : AppColors.neutralColor,
                      icon: Icon(Icons.favorite),
                      onPressed: () => ref.read(wishListProductsProvider.notifier).toggleProductInWishList(product),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Images
              Align(
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: AppSizes.defaultSpace, top: AppSizes.defaultSpace),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(product.images[0]),
                      ),
                    ),
                  ),
                ),
              ),

              // Product Title, ratings & Category
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        product.category.name,
                        style: Theme.of(context).textTheme.titleSmall?.apply(color: AppColors.neutralColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amberAccent, size: 16),
                      Text("5.0"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // More Details about Product
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Product",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  ReadMoreText(
                    product.description,
                    trimLines: 3,
                    trimMode: TrimMode.Line,
                    colorClickableText: AppColors.primaryColor,
                    style: TextStyle(color: AppColors.neutralColor),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Choose Color
              AttributesList(
                optionList: availableColors,
                title: 'Choose Color',
                selectedIndex: 1,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Select Size
              AttributesList(
                optionList: availableSizes,
                title: 'Select Size',
                selectedIndex: 0,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Ratings & Reviews
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ratings & Reviews",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    AppStrings.placeholder,
                    style: Theme.of(context).textTheme.titleSmall?.apply(color: AppColors.neutralColor),
                  ),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Write a Review

              // Total Price & Add to Cart
            ],
          ),
        ),
      ),
    );
  }
}
