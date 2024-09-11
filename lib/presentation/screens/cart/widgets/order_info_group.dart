import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class OrderInfoGroup extends StatelessWidget {
  const OrderInfoGroup({
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
                Text("Date", style: TextStyle(color: AppColors.neutralColor)),
                Text("Order ID", style: TextStyle(color: AppColors.neutralColor)),
                Text("Payment Method", style: TextStyle(color: AppColors.neutralColor)),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("02 Apr, 2024, 01:12 AM", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("SMT53237653", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Cash On Delivery", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
