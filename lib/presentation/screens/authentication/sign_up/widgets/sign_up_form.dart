import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';


class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(decoration: InputDecoration(labelText: AppStrings.fullName)),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(decoration: InputDecoration(labelText: AppStrings.emailAddress)),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.password,
              suffixIcon: IconButton(
                icon: const Icon(CupertinoIcons.eye_solid),
                onPressed: () {},
              ),
            ),
          ),

          SizedBox(height: AppSizes.spaceBtwInputFields),

          // Terms & Conditions
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text(AppStrings.agreeTo),
              TextButton(
                onPressed: () {},
                child: Text(AppStrings.termsAndConditions),
              ),
            ],
          ),

          // Sign up button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(AppStrings.signUp),
              )),
        ],
      ),
    );
  }
}
