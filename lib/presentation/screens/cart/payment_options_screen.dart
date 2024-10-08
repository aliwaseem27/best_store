import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/app_colors.dart';
import '../../../utils/constants/app_sizes.dart';
import 'widgets/shipping_address_tile.dart';

@RoutePage()
class PaymentOptionsScreen extends StatefulWidget {
  const PaymentOptionsScreen({super.key});

  @override
  State<PaymentOptionsScreen> createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
  final List<Map<String, dynamic>> addresses = [
    {
      "title": "Cash On Delivery",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.handHoldingDollar,
    },
    {
      "title": "MasterCard",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.ccMastercard,
    },
    {
      "title": "Discover",
      "subtitle": "Lorem Ipsum is simply",
      "leadingIcon": FontAwesomeIcons.creditCard,
    },
  ];

  int selectedPayment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Method"),
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
                      "Payment Option",
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
                          leadingIcon: addresses[index]["leadingIcon"]!,
                          selected: selectedPayment == index,
                          onTap: () {
                            setState(() {
                              selectedPayment = index;
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
                      onTap: () => context.router.push(const AddCardRoute()),
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
                            Text("Add New Card"),
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
                onPressed: () => context.router.maybePop(),
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
