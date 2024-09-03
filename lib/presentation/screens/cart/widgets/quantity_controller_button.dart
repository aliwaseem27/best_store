import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class QuantityControllerButton extends StatelessWidget {
  const QuantityControllerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.remove,
            ),
          ),
        ),
        SizedBox(width: AppSizes.spaceBtwItems),
        const Text("1"),
        SizedBox(width: AppSizes.spaceBtwItems),
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
