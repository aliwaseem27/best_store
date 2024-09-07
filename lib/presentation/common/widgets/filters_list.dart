import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';
import 'filter_list_item.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({
    super.key,
    required this.forYouTitles,
  });

  final List<String> forYouTitles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: AppSizes.sm);
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: forYouTitles.length,
        itemBuilder: (context, index) {
          return FilterListItem(
            title: forYouTitles[index],
            selected: index == 0,
          );
        },
      ),
    );
  }
}
