import 'package:best_store/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';


class OTPForm extends StatelessWidget {
  const OTPForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //Pinput input field
          SizedBox(
            width: double.infinity,
            child: Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 48,
                height: 48,
                textStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  border: Border.all(color: AppColors.neutralColor),
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          Text("Resend Code in 20 seconds", style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: AppSizes.spaceBtwSections),

          // Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(AppStrings.verify),
            ),
          ),
        ],
      ),
    );
  }
}
