import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';
import 'widgets/shipping_address_tile.dart';

@RoutePage()
class ShippingTypeScreen extends StatefulWidget {
  ShippingTypeScreen({super.key});

  @override
  State<ShippingTypeScreen> createState() => _ShippingTypeScreenState();
}

class _ShippingTypeScreenState extends State<ShippingTypeScreen> {
  final List<Map<String, dynamic>> addresses = [
    {
      "title": "Standard",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.handHoldingMedical,
    },
    {
      "title": "Click & Collect",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.handPointDown,
    },
    {
      "title": "Same-Day Delivery",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.truck,
    },
  ];

  int selectedShippingType = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Shipping"),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      "Shipping Type",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: AppSizes.spaceBtwItems),

                    // Choose Shipping address
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: addresses.length,
                      itemBuilder: (context, index) {
                        return CustomRadioListTile(
                          title: addresses[index]["title"]!,
                          subtitle: addresses[index]["subtitle"]!,
                          leadingIcon: addresses[index]["leadingIcon"]!,
                          selected: selectedShippingType == index,
                          onTap: () {
                            setState(() {
                              selectedShippingType = index;
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: AppSizes.spaceBtwItems);
                      },
                    ),

                    SizedBox(height: AppSizes.spaceBtwSections),
                    // Add New Address Button
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            SizedBox(width: AppSizes.spaceBtwItems),
                            Text("Add New Card"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: AppSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Continue"),
              ),
            ),
            // SizedBox(height: AppSizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
