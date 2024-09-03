import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 8,
      itemBuilder: (context, index, realIndex) {
        return Container(
          // margin: EdgeInsets.symmetric(horizontal: AppSizes.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            image: DecorationImage(image: AssetImage(banners[index]), fit: BoxFit.cover),
          ),
        );
      },
      options: CarouselOptions(
          // height: 150,
          aspectRatio: 18 / 8,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          enlargeFactor: 0.1,
          viewportFraction: 1),
    );
  }
}
