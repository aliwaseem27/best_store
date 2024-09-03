import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/intrinsic_height_scroll_view.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../common/widgets/social_buttons.dart';
import '../../../common/widgets/special_divider.dart';
import 'widgets/have_account_action.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/sign_up_header_text.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: IntrinsicHeightScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // Sign Up Screen Header text
                  const SignUpScreenHeaderText(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Sign up form
                  const SignUpForm(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Divider
                  SpecialDivider(dividerText: AppStrings.or),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Social Buttons
                  SocialButtons(),
                ],
              ),

              // sign in screen link
              const HaveAnAccountAction(),
            ],
          ),
        ),
      ),
    );
  }
}
