import 'package:auto_route/annotations.dart';
import 'package:best_store/presentation/common/widgets/intrinsic_height_scroll_view.dart';
import 'package:best_store/presentation/screens/cart/widgets/credit_card_widget.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/app_strings.dart';
import 'widgets/add_card_form.dart';

@RoutePage()
class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Card"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.defaultSpace),
        child: IntrinsicHeightScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  // Credit Card
                  CreditCardWidget(),

                  SizedBox(height: AppSizes.spaceBtwSections),

                  // Card Form
                  CardForm(),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Add Card"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
