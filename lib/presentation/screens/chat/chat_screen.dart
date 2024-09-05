import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:best_store/models/enums.dart';
import 'package:best_store/presentation/common/widgets/my_search_bar.dart';
import 'package:best_store/providers/products_provider.dart';
import 'package:best_store/utils/constants/app_sizes.dart';
import 'package:best_store/utils/constants/app_strings.dart';
import 'package:best_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/app_router.dart';
import 'widgets/chat_list_tile.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> chats = <Map<String, dynamic>>[
      {
        "title": "Ali Waseem",
        "subtitle": AppStrings.placeholder,
        "newMessages": 3,
        "profileImage": ImageStrings.person3,
        "time": "3:15",
      },
      {
        "title": "Zeena Adel",
        "subtitle": AppStrings.placeholder,
        "newMessages": 0,
        "profileImage": ImageStrings.person1,
        "time": "19:23",
      },
      {
        "title": "Henry Jack",
        "subtitle": AppStrings.placeholder,
        "newMessages": 1,
        "profileImage": ImageStrings.person2,
        "time": "11:30",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inbox"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search Bar
              MySearchBar(),
              SizedBox(height: AppSizes.spaceBtwSections),

              // Chats
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => context.router.push(PrivateChatRoute(personName: chats[index]["title"])),
                    child: ChatListTile(
                      title: chats[index]["title"],
                      subtitle: chats[index]["subtitle"],
                      newMessages: chats[index]["newMessages"],
                      profileImage: chats[index]["profileImage"],
                      time: chats[index]["time"],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: AppSizes.spaceBtwItems);
                },
                itemCount: chats.length,
              ),

              // Consumer(builder: (context, ref, child) {
              //   final productsInCategory = ref.watch(productsByCategoryProvider(NAME));
              //   return productsInCategory.when(
              //     data: (data) {
              //       return ListView.builder(
              //           shrinkWrap: true,
              //           itemCount: data.length,
              //           physics: const NeverScrollableScrollPhysics(),
              //           itemBuilder: (context, index) {
              //             return Text(data[index].title);
              //           });
              //     },
              //     error: (e, st) {
              //       return Center(child: Text(e.toString()));
              //     },
              //     loading: () {
              //       return const Center(child: CircularProgressIndicator());
              //     },
              //   );
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
