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
          onPressed: () {},
          child: const Text(AppStrings.signIn),
        ),
      ],
    );
  }
}
