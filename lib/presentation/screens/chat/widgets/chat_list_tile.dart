import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizes.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.newMessages,
    required this.profileImage,
    this.onTap,
    required this.time,
  });

  final String title;
  final String subtitle;
  final int newMessages;
  final String profileImage;
  final Function()? onTap;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(profileImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.bodyMedium?.apply(color: AppColors.neutralColor),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 1,
            width: 1,
            margin: EdgeInsets.only(left: AppSizes.spaceBtwSections),
          ),
          newMessages > 0
              ? Container(
                  padding: const EdgeInsets.all(AppSizes.sm),
                  decoration: BoxDecoration(color: AppColors.primaryColor, shape: BoxShape.circle),
                  child: Text("$newMessages", style: TextStyle(color: Colors.white)),
                )
              : SizedBox(
                  height: 24,
                ),
          Text(time, style: Theme.of(context).textTheme.bodySmall?.apply(color: AppColors.neutralColor))
        ],
      ),
    );
  }
}
