import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';
import 'filter_list_item.dart';

class FiltersList extends StatelessWidget {
  const FiltersList({
    super.key,
    required this.options,
  });

  final List<String> options;

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
        itemCount: options.length,
        itemBuilder: (context, index) {
          return FilterListItem(
            title: options[index],
            selected: index == 0,
          );
        },
      ),
    );
  }
}
