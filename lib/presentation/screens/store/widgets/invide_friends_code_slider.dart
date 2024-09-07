import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/image_strings.dart';

class InviteFriendsCodeSlider extends StatelessWidget {
  const InviteFriendsCodeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Card(
          color: AppColors.secondaryColor,
          child: Container(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            // margin: EdgeInsets.symmetric(horizontal: AppSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImageStrings.inviteFriends,
                  width: 128,
                  height: 128,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Invite On Ride",
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Share this code with friends and Family members to get more offers.",
                        style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      Text(
                        "Share this code:",
                        style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
                      ),
                      SizedBox(
                        height: 40,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "N2X1Y",
                            suffixIcon: Icon(Icons.copy),
                          ),
                        ),
                      ),
                      const SizedBox(height: AppSizes.spaceBtwItems),
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                                child: const Text(
                                  "Invite",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Details"),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 400,
        viewportFraction: 0.9,
        enableInfiniteScroll: false,
        // enlargeCenterPage: true,
        // enlargeFactor: 0.1,
      ),
    );
  }
}
