import 'package:auto_route/annotations.dart';
import 'package:best_store/providers/products_provider.dart';
import 'package:best_store/utils/constants/app_configs.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/fake_product.dart';
import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../models/product_model.dart';
import '../../common/widgets/filters_list.dart';
import '../../common/widgets/grid_layout_four_elements.dart';
import '../../common/widgets/section_title.dart';
import 'widgets/home_screen_categories.dart';
import 'widgets/home_screen_header.dart';
import '../../common/widgets/my_search_bar.dart';
import 'widgets/invide_friends_code_slider.dart';
import 'widgets/promo_banners_slider.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const HomeScreenHeader(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Search Bar
              const MySearchBar(),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Promo Banners
              PromoSlider(banners: banners),

              const SizedBox(height: AppSizes.spaceBtwItems),

              // Categories Header & List
              SectionTitle(title: "Category", onPressed: () {}),
              const HomeScreenCategories(categories: AppConfigs.categories),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Just For You
              const SectionTitle(title: "Just For You", showButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Filters
              FiltersList(options: forYouTitles),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // Products
              Consumer(
                builder: (context, ref, child) {
                  final AsyncValue<ProductListInfo> products = ref.watch(allProductsProvider);
                  return products.when(
                    data: (data) {
                      return Column(
                        children: [
                          GridLayoutFourElements(products: data.products),
                        ],
                      );
                    },
                    error: (e, st) {
                      return Center(child: Text(e.toString()));
                    },
                    loading: () {
                      return Skeletonizer(
                        child: GridLayoutFourElements(
                          products: List.generate(
                            8,
                            (index) => FakeData.getFakeProduct(),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

              // Invite Friends
              const SizedBox(height: AppSizes.spaceBtwItems),
              SectionTitle(title: "Invite Friends", onPressed: () {}),
              const InviteFriendsCodeSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
