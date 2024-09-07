import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import 'category_vertical_widget.dart';

class HomeScreenCategories extends StatelessWidget {
  const HomeScreenCategories({
    super.key,
    required this.categories,
  });

  final List<Map<String, dynamic>> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(width: AppSizes.spaceBtwItems);
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context.router.push(SearchRoute(category: categories[index].values.last)),
            child: CategoryVerticalWidget(
              title: categories[index].values.first,
              image: categories[index].values.elementAt(1),
            ),
          );
        },
      ),
    );
  }
}
