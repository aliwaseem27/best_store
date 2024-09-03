import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    required this.title,
    this.showButton = true,
    this.onPressed,
  });

  final String title;
  final bool showButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        showButton
            ? TextButton(
                onPressed: onPressed,
                child: Text(
                  "See All",
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              )
            : Container(),
      ],
    );
  }
}
