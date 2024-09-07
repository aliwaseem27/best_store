import 'package:auto_route/annotations.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/notification_tile.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notifications = <Map<String, dynamic>>[
      {
        "date": "Today",
        "notifications": [
          {
            "title": "Order Confirm Successful",
            "time": "1h",
            "icon": Icons.check_circle,
          },
          {
            "title": "Order Shipped",
            "time": "2h",
            "icon": Icons.local_shipping,
          },
        ],
      },
      {
        "date": "Yesterday",
        "notifications": [
          {
            "title": "New Product Arrival Alerts",
            "time": "26h",
            "icon": Icons.new_releases,
          },
          {
            "title": "Holiday Promotions",
            "time": "28h",
            "icon": Icons.local_offer,
          },
          {
            "title": "New Card Added",
            "time": "31h",
            "icon": Icons.credit_card,
          },
        ],
      },
      {
        "date": "10-07-2024",
        "notifications": [
          {
            "title": "Order Confirm Successful",
            "time": "1h",
            "icon": Icons.check_circle,
          },
          {
            "title": "Order Shipped",
            "time": "2h",
            "icon": Icons.local_shipping,
          },
        ],
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // Grouped Notifications
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notifications[index]["date"],
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),

                  // Seperation Notifications
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, subIndex) {
                      return NotificationTile(
                        time: notifications[index]["notifications"][subIndex]["time"],
                        title: notifications[index]["notifications"][subIndex]["title"],
                        subtitle: AppStrings.placeholderLong,
                        icon: notifications[index]["notifications"][subIndex]["icon"],
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwItems),
                    itemCount: notifications[index]["notifications"].length,
                  )
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: AppSizes.spaceBtwSections),
            itemCount: notifications.length,
          ),
        ),
      ),
    );
  }
}
