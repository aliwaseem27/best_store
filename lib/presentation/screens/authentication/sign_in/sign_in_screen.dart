import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/intrinsic_height_scroll_view.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_strings.dart';
import '../../../common/widgets/social_buttons.dart';
import '../../../common/widgets/special_divider.dart';
import 'widgets/dont_have_account.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/sign_in_header_text.dart';

@RoutePage()
class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: IntrinsicHeightScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Sign Up Screen Header text
                  SignInScreenHeaderText(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Sign up form
                  SignInForm(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Divider
                  SpecialDivider(dividerText: AppStrings.or),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Social Buttons
                  SocialButtons(),
                ],
              ),

              // sign in screen link
              DontHaveAnAccountAction(),
            ],
          ),
        ),
      ),
    );
  }
}
