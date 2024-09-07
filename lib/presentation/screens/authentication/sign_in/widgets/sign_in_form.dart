import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(decoration: const InputDecoration(labelText: AppStrings.emailAddress)),
          const SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.password,
              suffixIcon: IconButton(
                icon: const Icon(CupertinoIcons.eye_solid),
                onPressed: () {},
              ),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBtwInputFields),

          // Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => context.router.push(const ForgetPasswordRoute()),
                child: const Text(AppStrings.forgotPassword),
              ),
            ],
          ),

          // Sign in button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => context.router.replace(const NavigationRoute()),
              child: const Text(AppStrings.signIn),
            ),
          ),
        ],
      ),
    );
  }
}
