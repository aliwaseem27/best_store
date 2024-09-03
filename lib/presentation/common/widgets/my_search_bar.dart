import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.secondaryColor,
              hintText: "Search for products",
              hintStyle: TextStyle(color: AppColors.neutralColor),
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              prefixIconColor: AppColors.neutralColor,
            ),
          ),
        ),
        SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.sliders),
          ),
        ),
      ],
    );
  }
}
