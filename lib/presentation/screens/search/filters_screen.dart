import 'package:auto_route/annotations.dart';
import 'package:best_store/models/enums.dart';
import 'package:best_store/presentation/common/widgets/filters_list.dart';
import 'package:best_store/presentation/common/widgets/section_title.dart';
import 'package:best_store/presentation/screens/search/widgets/rating_selector_widget.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

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
        title: const Text(AppStrings.filters),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Filters
              const SectionTitle(title: AppStrings.categoryFilters, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: categoryOptions),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Gender Filters
              const SectionTitle(title: AppStrings.gender, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: genderOptions),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Sort By Filters
              const SectionTitle(title: AppStrings.sortBy, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: sortByOptions),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Brand Filters
              const SectionTitle(title: AppStrings.avialableBrand, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              FiltersList(options: brandOptions),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Price Range Filters
              const SectionTitle(title: AppStrings.priceRange, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const PriceRangeSlider(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Reviews Filters
              const SectionTitle(title: AppStrings.reviewsFilters, showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const RatingSelectorWidget(),
              const SizedBox(height: AppSizes.spaceBtwSections),

              // Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: AppColors.secondaryColor,
                      ),
                      child: const Text(AppStrings.resetFilters),
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(AppStrings.applyFilters),
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
