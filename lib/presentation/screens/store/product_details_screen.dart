import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/presentation/screens/store/widgets/overall_product_rating.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../../models/product_model.dart';
import '../../../providers/products_provider.dart';
import '../../common/widgets/attributes_list_widget.dart';
import 'widgets/product_details_bottom_button.dart';
import 'widgets/product_images_slider.dart';
import 'widgets/review_container.dart';

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
                  icon: const Icon(
                    FontAwesomeIcons.arrowLeft,
                    size: 16,
                  ),
                  onPressed: () => context.router.maybePop(),
                ),
              ),
              const Text("Product Details"),
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor,
                child: Consumer(
                  builder: (context, ref, child) {
                    final isProductInWishList = ref.watch(wishListProductsProvider).products.contains(product);
                    return IconButton(
                      color: isProductInWishList ? Colors.red : AppColors.neutralColor,
                      icon: const Icon(Icons.favorite),
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
      body: Stack(
        children: [
          // Body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Images
                  ProductImagesSlider(images: product.images),
                  const SizedBox(height: AppSizes.spaceBtwSections),

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
                          const Icon(Icons.star, color: Colors.amberAccent, size: 16),
                          Text(product.rating.toString()),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

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
                        style: const TextStyle(color: AppColors.neutralColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Choose Color
                  AttributesList(
                    optionList: availableColors,
                    title: 'Choose Color',
                    selectedIndex: 1,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Select Size
                  AttributesList(
                    optionList: availableSizes,
                    title: 'Select Size',
                    selectedIndex: 0,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

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
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Rating Score
                  OverallProductRating(
                    rating: product.rating,
                    reviews: product.reviews,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Write a Review
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondaryColor,
                      hintText: "Write A Review",
                      hintStyle: TextStyle(color: AppColors.neutralColor),
                      prefixIcon: Icon(FontAwesomeIcons.pen),
                      prefixIconColor: AppColors.neutralColor,
                    ),
                    onTap: () => context.router.push(ReviewRoute(product: product)),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),

                  // Reviews
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: product.reviews.length > 3 ? 3 : product.reviews.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppSizes.spaceBtwItems);
                    },
                    itemBuilder: (context, index) {
                      return ReviewContainer(review: product.reviews[index]);
                    },
                  ),
                  const SizedBox(height: 120),
                ],
              ),
            ),
          ),

          // Add to Cart button
          Positioned(
            bottom: 0,
            child: ProductDetailsBottomButton(
              product: product,
            ),
          ),
        ],
      ),
    );
  }
}
