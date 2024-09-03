import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ActiveOrdersRoute(),
        CompletedOrdersRoute(),
        CancelledOrdersRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text("My Orders"),
            centerTitle: true,
            leading: AutoLeadingButton(),
            bottom: TabBar(
              controller: controller,
              indicatorColor: AppColors.primaryColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              unselectedLabelColor: AppColors.neutralColor,
              tabs: const [
                Tab(text: 'Active'),
                Tab(text: 'Completed'),
                Tab(text: 'Cancelled'),
              ],
            ),
          ),
          body: child,
        );
      },
    );
  }
}
