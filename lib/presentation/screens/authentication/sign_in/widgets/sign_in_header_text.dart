import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';


class SignInScreenHeaderText extends StatelessWidget {
  const SignInScreenHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(AppStrings.signIn, style: Theme.of(context).textTheme.headlineMedium),
          SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Text(
              AppStrings.placeholder,
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
