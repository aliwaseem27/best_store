import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/profile_list_tile.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              // Profile Header
              Text(
                "Profile",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(ImageStrings.profileImage),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: const Offset(0, 0),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                "Ali Waseem",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                "ali.waseem27@gmail.com",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: AppColors.neutralColor),
              ),

              const SizedBox(height: AppSizes.spaceBtwSections),

              // Profile Tiles
              const ProfileListTile(leadingIcon: Icons.person, title: AppStrings.myAccount),
              const ProfileListTile(leadingIcon: Icons.credit_card, title: AppStrings.paymentMethod),
              ProfileListTile(
                  leadingIcon: Icons.list_alt_rounded,
                  title: AppStrings.myOrders,
                  onTap: () => context.router.push(
                        const MyOrdersRoute(),
                      )),
              ProfileListTile(
                leadingIcon: Icons.settings,
                title: AppStrings.settings,
                onTap: () => context.router.push(const SettingsRoute()),
              ),
              const ProfileListTile(leadingIcon: Icons.headset_mic_outlined, title: AppStrings.helpCenter),
              const ProfileListTile(leadingIcon: Icons.privacy_tip, title: AppStrings.privacyPolicy),
              const ProfileListTile(leadingIcon: Icons.person_add_alt_1_sharp, title: AppStrings.inviteFriends),
              const ProfileListTile(leadingIcon: Icons.exit_to_app, title: AppStrings.signOut),
            ],
          ),
        ),
      ),
    );
  }
}
