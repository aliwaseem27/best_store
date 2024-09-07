import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text Box
        Expanded(
          child: TextFormField(
            decoration: const InputDecoration(
              labelText: "Type A Message",
              floatingLabelBehavior: FloatingLabelBehavior.never,
              prefixIcon: Icon(
                Icons.tag_faces_rounded,
                color: AppColors.primaryColor,
              ),
              suffixIcon: Icon(
                Icons.mic,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),

        const SizedBox(
          width: AppSizes.spaceBtwItems,
        ),

        // Send Button
        Container(
          height: 56,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(Icons.send),
          ),
        ),
      ],
    );
  }
}
