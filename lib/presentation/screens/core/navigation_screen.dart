import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        WishlistRoute(),
        CartRoute(),
        ChatRoute(),
        ProfileRoute(),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: SafeArea(
            child: Container(
              clipBehavior: Clip.hardEdge,
              height: 72,
              margin: EdgeInsets.only(
                  left: AppSizes.defaultSpace, right: AppSizes.defaultSpace, bottom: AppSizes.defaultSpace),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                    ),
                  ]),
              child: BottomNavigationBar(
                elevation: 0,
                iconSize: 28,
                selectedFontSize: 12,
                backgroundColor: AppColors.secondaryColor,
                selectedItemColor: AppColors.primaryColor,
                unselectedItemColor: AppColors.neutralColor,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: (index) => tabsRouter.setActiveIndex(index),
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: "Wishlist",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag_rounded),
                    label: "Cart",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat_outlined),
                    label: "Chat",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
