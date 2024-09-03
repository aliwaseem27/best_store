import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Stack(
        children: [
          Positioned(
            right: MediaQuery.of(context).size.width * 0.001,
            top: -MediaQuery.of(context).size.width * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.15,
            top: -MediaQuery.of(context).size.width * 0.1,
            child: Container(
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(AppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Bank Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "National Iraqi Bank",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(
                      height: 32,
                      width: 32,
                      child: Image.asset(ImageStrings.masterCardLogo),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.spaceBtwSections),

                // Card Number
                Text(
                  "7986 **** **** 6985",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),

                SizedBox(height: AppSizes.spaceBtwItems),

                // Holder Info
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Holder Name
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Holder Name",
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          "ALI WASEEM MOHAMED",
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    // Valid Thru
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "VALID THRU",
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          "08/24",
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
