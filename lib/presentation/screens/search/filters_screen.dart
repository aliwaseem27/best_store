import 'package:auto_route/annotations.dart';
import 'package:best_store/models/enums.dart';
import 'package:best_store/presentation/common/widgets/filter_list_item.dart';
import 'package:best_store/presentation/common/widgets/filters_list.dart';
import 'package:best_store/presentation/common/widgets/section_title.dart';
import 'package:best_store/presentation/screens/search/widgets/rating_selector_widget.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'widgets/price_range_slider.dart';

@RoutePage()
class FiltersScreen extends StatelessWidget {
  FiltersScreen({super.key});

  final List<String> categoryOptions = ProductCategory.values.map((e) => e.name).toList();
  final List<String> genderOptions = ["All", "Male", "Female"];
  final List<String> sortByOptions = ["All", "Popular", "Newest", "Lowest Price", "Trending"];
  final List<String> brandOptions = ["All", "Chanel", "Gucci", "Prads", "Versace"];
  final List<String> priceRangeOptions = ["All", "Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.filters),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Filters
              SectionTitle(title: AppStrings.categoryFilters, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: categoryOptions),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Gender Filters
              SectionTitle(title: AppStrings.gender, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: genderOptions),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Sort By Filters
              SectionTitle(title: AppStrings.sortBy, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: sortByOptions),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Brand Filters
              SectionTitle(title: AppStrings.avialableBrand, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: brandOptions),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Price Range Filters
              SectionTitle(title: AppStrings.priceRange, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              PriceRangeSlider(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Reviews Filters
              SectionTitle(title: AppStrings.reviewsFilters, showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),
              RatingSelectorWidget(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(AppStrings.resetFilters),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceBtwItems),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(AppStrings.applyFilters),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
