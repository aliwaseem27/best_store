import 'package:auto_route/annotations.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../../../utils/constants/app_colors.dart';
import 'widgets/barcode_container.dart';
import 'widgets/order_info_group.dart';
import 'widgets/total_price_group.dart';

@RoutePage()
class EReceiptScreen extends StatelessWidget {
  const EReceiptScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.eReceipt),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Barcode
                BarcodeContainer(),
                SizedBox(height: AppSizes.spaceBtwSections),

                // Total cost
                TotalPriceGroup(),
                SizedBox(height: AppSizes.spaceBtwSections),

                // Order info
                OrderInfoGroup(),
                SizedBox(height: AppSizes.spaceBtwSections),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppStrings.downloadEReceipt),
              ),
            )
          ],
        ),
      ),
    );
  }
}
