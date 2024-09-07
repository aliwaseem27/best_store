import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';
import 'widgets/shipping_address_tile.dart';

@RoutePage()
class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  final List<Map<String, String>> addresses = [
    {
      "title": "Home",
      "subtitle": "123 Main St, Anytown, USA",
    },
    {
      "title": "Office",
      "subtitle": "456 Market St, Anytown, USA",
    },
    {
      "title": "Friends House",
      "subtitle": "789 Other St, Anytown, USA",
    },
  ];

  int selectedAddress = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shipping Address"),
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
                      "Shipping Address",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems),

                    // Choose Shipping address
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: addresses.length,
                      itemBuilder: (context, index) {
                        return CustomRadioListTile(
                          title: addresses[index]["title"]!,
                          subtitle: addresses[index]["subtitle"]!,
                          leadingIcon: Icons.location_on,
                          selected: selectedAddress == index,
                          onTap: () {
                            setState(() {
                              selectedAddress = index;
                            });
                          },
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: AppSizes.spaceBtwItems);
                      },
                    ),

                    const SizedBox(height: AppSizes.spaceBtwSections),
                    // Add New Address Button
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            SizedBox(width: AppSizes.spaceBtwItems),
                            Text("Add New Address"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwSections),
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
