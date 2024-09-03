import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';

class ProductActionButton extends StatelessWidget {
  const ProductActionButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });

  final String buttonText;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
        ),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          buttonText,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
