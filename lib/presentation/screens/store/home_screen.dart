import 'package:auto_route/annotations.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/filters_list.dart';
import '../../common/widgets/grid_layout_four_elements.dart';
import '../../common/widgets/section_title.dart';
import 'widgets/home_screen_categories.dart';
import 'widgets/home_screen_header.dart';
import '../../common/widgets/my_search_bar.dart';
import 'widgets/invide_friends_code_slider.dart';
import 'widgets/product_vertical_card.dart';
import 'widgets/promo_banners_slider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {"title": "Sports", "image": ImageStrings.sportIcon},
      {"title": "Clothing", "image": ImageStrings.clothIcon},
      {"title": "Shoes", "image": ImageStrings.shoeIcon},
      {"title": "Cosmetics", "image": ImageStrings.cosmeticsIcon},
      {"title": "Animals", "image": ImageStrings.animalIcon},
      {"title": "Toys", "image": ImageStrings.toyIcon},
      {"title": "Furniture", "image": ImageStrings.furnitureIcon},
      {"title": "Jewelery", "image": ImageStrings.jeweleryIcon},
      {"title": "Electronics", "image": ImageStrings.electronicsIcon},
    ];

    final List<String> forYouTitles = ["All", "Popular", "Newest", "Most Sell", "Lowest Price", "Trending"];

    final List<String> banners = [
      ImageStrings.banner1,
      ImageStrings.banner2,
      ImageStrings.banner3,
      ImageStrings.banner4,
      ImageStrings.banner5,
      ImageStrings.banner6,
      ImageStrings.banner7,
      ImageStrings.banner8,
    ];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            left: AppSizes.defaultSpace, right: AppSizes.defaultSpace, top: AppSizes.defaultSpace, bottom: AppSizes.sm),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              HomeScreenHeader(),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Search Bar
              MySearchBar(),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Promo Banners
              PromoSlider(banners: banners),

              SizedBox(height: AppSizes.spaceBtwItems),

              // Categories Header & List
              SectionTitle(title: "Category", onPressed: () {}),
              HomeScreenCategories(categories: categories),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Just For You
              SectionTitle(title: "Just For You", showButton: false),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Filters
              FiltersList(forYouTitles: forYouTitles),
              SizedBox(height: AppSizes.spaceBtwItems),

              // Products
              GridLayoutFourElements(element: ProductVerticalCard()),

              // Invite Friends
              SizedBox(height: AppSizes.spaceBtwItems),
              SectionTitle(title: "Invite Friends", onPressed: () {}),
              InviteFriendsCodeSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
