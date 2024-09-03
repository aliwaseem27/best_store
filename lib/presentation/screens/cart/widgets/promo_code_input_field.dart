import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class PromoCodeInputField extends StatelessWidget {
  const PromoCodeInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.secondaryColor,
            hintText: "Promo Code",
            hintStyle: TextStyle(color: AppColors.neutralColor),
          ),
        ),
        Positioned(
          right: AppSizes.defaultSpace,
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Apply"),
            ),
          ),
        ),
      ],
    );
  }
}
