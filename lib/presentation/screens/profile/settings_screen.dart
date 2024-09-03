import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/screens/profile/widgets/profile_list_tile.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          children: [
            ProfileListTile(
              title: "Notification Settings",
              leadingIcon: Icons.notifications_active,
            ),
            ProfileListTile(
              title: "Password Manager",
              leadingIcon: Icons.lock,
            ),
            ProfileListTile(
              title: "Delete Account",
              leadingIcon: Icons.delete_forever,
            ),
          ],
        ),
      ),
    );
  }
}
