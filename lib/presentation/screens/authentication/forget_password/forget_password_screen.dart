import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../common/widgets/intrinsic_height_scroll_view.dart';
import 'widgets/forget_password_form.dart';
import 'widgets/forget_password_header_text.dart';
import 'widgets/goback_to_sign_in_action.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                  // Forget Password Screen Header text
                  ForgetPasswordScreenHeaderText(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Sign up form
                  ForgetPasswordForm(),

                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),

              // sign in screen link
              GoBackToSignInAction(),
            ],
          ),
        ),
      ),
    );
  }
}
