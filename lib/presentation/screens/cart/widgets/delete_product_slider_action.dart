import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';

class DeleteProductSliderAction extends StatelessWidget {
  const DeleteProductSliderAction({
    super.key,
    this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: AppSizes.md),
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
          ),
          child: Icon(
            Icons.delete_forever_rounded,
            color: Colors.red.shade500,
          ),
        ),
      ),
    );
  }
}
