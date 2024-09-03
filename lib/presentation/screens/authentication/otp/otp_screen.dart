import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../common/widgets/intrinsic_height_scroll_view.dart';
import 'widgets/otp_form.dart';
import 'widgets/otp_screen_header_text.dart';

@RoutePage()
class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

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
                  // OTP Screen Header text
                  OTPScreenHeaderText(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // OTP form
                  OTPForm(),

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
