import 'package:auto_route/annotations.dart';
import 'package:best_store/models/product_model.dart';
import 'package:best_store/presentation/common/widgets/section_title.dart';
import 'package:best_store/presentation/screens/cart/widgets/horizontal_product_card.dart';
import 'package:best_store/presentation/screens/store/widgets/rating_indicator.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

@RoutePage()
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.review),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Info Tile
              HorizontalProductCard(
                productName: product.title,
                productImage: product.images.first,
                productCategory: product.category.name,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Add Photo Or Video
              SectionTitle(title: AppStrings.addPhotoOrVideo),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.cloud_upload,
                      size: AppSizes.iconLg * 2,
                      color: AppColors.primaryColor,
                    ),
                    SizedBox(height: AppSizes.spaceBtwItems),
                    Text(
                      AppStrings.clickHereToUpload,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.neutralColor),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Rating
              SectionTitle(title: AppStrings.whatDoYouThink),
              Text(
                AppStrings.placeholder,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.neutralColor),
              ),
              SizedBox(height: AppSizes.spaceBtwItems),
              TRatingBarIndicator(rating: 4),
              SizedBox(height: AppSizes.spaceBtwItems),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.secondaryColor,
                  hintText: "Write A Review",
                  hintStyle: const TextStyle(color: AppColors.neutralColor),
                  prefixIconColor: AppColors.neutralColor,
                  isDense: true,
                ),
                textAlignVertical: TextAlignVertical.top,
                maxLines: 5,
              ),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Submit Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(AppStrings.submitReview),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
