import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:best_store/utils/constants/app_colors.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/image_strings.dart';
import 'widgets/on_boarding_page.dart';

@RoutePage()
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> onBoardingPages = <Map<String, dynamic>>[
      {
        'image': ImageStrings.onBoardingImage1,
        'title': AppStrings.onBoardingTitle1,
        'subtitle': AppStrings.placeholder,
      },
      {
        'image': ImageStrings.onBoardingImage2,
        'title': AppStrings.onBoardingTitle2,
        'subtitle': AppStrings.placeholder,
      },
      {
        'image': ImageStrings.onBoardingImage3,
        'title': AppStrings.onBoardingTitle3,
        'subtitle': AppStrings.placeholder,
      },
      {
        'image': ImageStrings.onBoardingImage4,
        'title': AppStrings.onBoardingTitle4,
        'subtitle': AppStrings.placeholder,
      },
    ];
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: onBoardingPages.length,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            itemBuilder: (context, index) {
              return OnBoardingPage(
                image: onBoardingPages[index]['image'],
                title: onBoardingPages[index]['title'],
                subtitle: onBoardingPages[index]['subtitle'],
              );
            },
          ),

          // Navigation buttons
          Positioned(
            bottom: AppSizes.spaceBtwSections,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              width: MediaQuery.of(context).size.width,
              child: pageIndex < onBoardingPages.length - 1
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Skip Button
                        TextButton(
                          onPressed: () {
                            pageController.animateToPage(
                              duration: Duration(milliseconds: 500),
                              onBoardingPages.length - 1,
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Text(AppStrings.skip),
                        ),

                        // NavigationDots
                        SmoothPageIndicator(
                          controller: pageController,
                          count: onBoardingPages.length - 1,
                          effect: ExpandingDotsEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                          ),
                        ),

                        // Next Button
                        CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                          child: IconButton(
                            iconSize: 16,
                            onPressed: () {
                              pageController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            },
                            color: Colors.white,
                            icon: Icon(
                              FontAwesomeIcons.arrowRight,
                            ),
                            // color: AppColors.primaryColor,
                          ),
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => context.router.replace(const SignUpRoute()),
                            child: Text(AppStrings.signUp),
                          ),
                        ),
                        SizedBox(
                          width: AppSizes.spaceBtwSections,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () => context.router.replace(const SignInRoute()),
                            child: Text(
                              AppStrings.signIn,
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondaryColor),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
