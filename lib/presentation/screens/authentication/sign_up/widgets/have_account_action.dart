import 'package:auto_route/auto_route.dart';
import 'package:best_store/presentation/screens/core/app_router.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';

class HaveAnAccountAction extends StatelessWidget {
  const HaveAnAccountAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.alreadyHaveAnAccount),
        TextButton(
          onPressed: () => context.router.navigate(const SignInRoute()),
          child: const Text(AppStrings.signIn),
        ),
      ],
    );
  }
}
