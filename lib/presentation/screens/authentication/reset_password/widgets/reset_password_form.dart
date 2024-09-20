import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.newPassword,
              suffixIcon: IconButton(
                icon: const Icon(CupertinoIcons.eye_solid),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.confirmPassword,
              suffixIcon: IconButton(
                icon: const Icon(CupertinoIcons.eye_solid),
                onPressed: () {},
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.router.navigate(const SignInRoute()),
              child: const Text(AppStrings.resetPassword),
            ),
          ),
        ],
      ),
    );
  }
}
