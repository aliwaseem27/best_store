import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/authentication/forget_password/widgets/forget_password_form.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
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
            decoration: const InputDecoration(
              filled: true,
              fillColor: AppColors.secondaryColor,
              hintText: "Search",
              hintStyle: TextStyle(color: AppColors.neutralColor),
              prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
              prefixIconColor: AppColors.neutralColor,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () => context.router.push(FiltersRoute()),
            icon: const Icon(FontAwesomeIcons.sliders),
          ),
        ),
      ],
    );
  }
}
