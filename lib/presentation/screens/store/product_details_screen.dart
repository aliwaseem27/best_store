import 'package:auto_route/annotations.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

import '../../common/widgets/attributes_list_widget.dart';

@RoutePage()
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

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
                  onPressed: () {},
                ),
              ),
              Text("Product Details"),
              CircleAvatar(
                backgroundColor: AppColors.secondaryColor,
                child: IconButton(
                  color: AppColors.primaryColor,
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Images

              // Product Title, ratings & Category
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Black T-Shirt",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Clothing",
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
                    AppStrings.placeholderLong,
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
