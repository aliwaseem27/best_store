import 'package:best_store/providers/carts_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class TotalPriceGroup extends ConsumerWidget {
  const TotalPriceGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartInfo = ref.watch(cartsProvider);
    return Container(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      decoration: BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total items", style: TextStyle(color: AppColors.neutralColor)),
                Text("Total Price", style: TextStyle(color: AppColors.neutralColor)),
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
                Text("\$${cartInfo.totalQuantity}", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("\$${cartInfo.total}", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("\$10.00", style: TextStyle(fontWeight: FontWeight.bold)),
                Text("-\$${cartInfo.total - cartInfo.discountedTotal}", style: TextStyle(fontWeight: FontWeight.bold)),
                Divider(),
                Text("\$${cartInfo.discountedTotal + 10}", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
