import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_strings.dart';


class GoBackToSignInAction extends StatelessWidget {
  const GoBackToSignInAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.goBackTo),
        TextButton(
          onPressed: () {},
          child: Text(AppStrings.signIn),
        ),
      ],
    );
  }
}
