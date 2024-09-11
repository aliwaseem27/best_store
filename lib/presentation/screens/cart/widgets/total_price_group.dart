import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class TotalPriceGroup extends StatelessWidget {
  const TotalPriceGroup({
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
      child: const Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total items", style: TextStyle(color: AppColors.neutralColor)),
                Text("Amount", style: TextStyle(color: AppColors.neutralColor)),
                Text("Delivery Charge", style: TextStyle(color: AppColors.neutralColor)),
                Text("Promo", style: TextStyle(color: AppColors.neutralColor)),
                Divider(),
                Text("Total Amount", style: TextStyle(color: AppColors.neutralColor)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("04", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("\$212.94", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("\$10.00", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("-\$42.61", style: TextStyle(fontWeight: FontWeight.bold)),
                Divider(),
                Text("180.32", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
