import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.personName,
    required this.message,
  });

  final Map<String, dynamic> message;
  final String personName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message["senderName"] == personName ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: const EdgeInsets.all(AppSizes.sm),
          decoration: BoxDecoration(
              color: message["senderName"] == personName ? AppColors.secondaryColor : AppColors.primaryColor,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                message["message"],
                style: TextStyle(
                  color: message["senderName"] == personName ? Colors.black : Colors.white,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    message["time"],
                    style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor),
                  ),
                  const SizedBox(
                    width: AppSizes.xs,
                  ),
                  // Sent Mark
                  message["senderName"] != personName
                      ? const Icon(
                          Icons.done_all,
                          size: 16,
                          color: AppColors.neutralColor,
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
