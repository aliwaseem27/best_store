import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../common/widgets/intrinsic_height_scroll_view.dart';
import 'widgets/reset_password_form.dart';
import 'widgets/reset_password_header_text.dart';

@RoutePage()
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                  ResetPasswordScreenHeaderText(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Sign up form
                  ForgetPasswordForm(),

                  SizedBox(height: AppSizes.spaceBtwSections),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
