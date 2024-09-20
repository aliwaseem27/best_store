import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';


class GoBackToSignInAction extends StatelessWidget {
  const GoBackToSignInAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(AppStrings.goBackTo),
        TextButton(
          onPressed: () => context.router.maybePop(),
          child: const Text(AppStrings.signIn),
        ),
      ],
    );
  }
}
