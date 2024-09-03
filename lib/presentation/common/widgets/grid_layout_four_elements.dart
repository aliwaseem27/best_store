import 'package:flutter/material.dart';

import '../../../utils/constants/app_sizes.dart';

class GridLayoutFourElements extends StatelessWidget {
  const GridLayoutFourElements({
    super.key, required this.element,
  });

  final Widget element;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSizes.spaceBtwItems,
        crossAxisSpacing: AppSizes.spaceBtwItems,
        mainAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return element;
      },
    );
  }
}
