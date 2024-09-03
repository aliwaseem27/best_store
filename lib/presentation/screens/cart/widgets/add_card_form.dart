import 'package:flutter/material.dart';

import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_strings.dart';

class CardForm extends StatelessWidget {
  const CardForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.cardHolderName,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              labelText: AppStrings.cardNumber,
            ),
          ),
          SizedBox(height: AppSizes.spaceBtwInputFields),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: AppStrings.expirayDate,
                  ),
                ),
              ),
              SizedBox(width: AppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: AppStrings.cvvCode,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
