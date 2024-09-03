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
          TextFormField(decoration: InputDecoration(labelText: AppStrings.emailAddress)),
          SizedBox(height: AppSizes.spaceBtwInputFields),

          // Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(AppStrings.sendCode),
            ),
          ),
        ],
      ),
    );
  }
}
