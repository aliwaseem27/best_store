import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class BarcodeContainer extends StatelessWidget {
  const BarcodeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: BarcodeWidget(
        barcode: Barcode.code93(),
        data: 'SMT53237653',
        height: 80,
        errorBuilder: (context, error) => Center(child: Text(error)),
      ),
    );
  }
}
