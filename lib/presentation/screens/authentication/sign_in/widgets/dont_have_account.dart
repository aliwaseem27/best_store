import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';
import '../../../core/app_router.dart';

class DontHaveAnAccountAction extends StatelessWidget {
  const DontHaveAnAccountAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.dontHaveAnAccount),
        TextButton(
          onPressed: () => context.router.push(const SignUpRoute()),
          child: Text(AppStrings.signUp),
        ),
      ],
    );
  }
}
