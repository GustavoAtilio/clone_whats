import 'package:clone_whats/src/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/top_navigation_bar/top_navigation_bar.dart';
import '../calls/calls_page.dart';
import '../chat/chat_page.dart';
import '../status/status_page.dart';

class BasePage extends StatelessWidget {
  BasePage({super.key});
  final userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar
        appBar: AppBar(
          elevation: 0,
          title: const Text('WhatsApp'),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
                    size: 26.0,
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.more_vert),
                )),
          ],
        ),

        //Body

        body: Column(
          children: [
            const TopNavigationBarCutom(),
            Expanded(
              child: PageView(
                controller: userController.pageController,
                children: [
                  Container(color: Theme.of(context).backgroundColor),
                  const ChatPage(),
                  const StatusPage(),
                  const CallsPage(),
                ],
              ),
            ),
          ],
        ),

        //Button

        floatingActionButton: GetBuilder<UserController>(
          builder: (userController) {
            IconData iconPage = Icons.message;
            if (userController.pageUser == 2) {
              iconPage = Icons.camera;
            }
            if (userController.pageUser == 3) {
              iconPage = Icons.phone_in_talk_sharp;
            }
            return FloatingActionButton(
              onPressed: () {},
              child: Icon(iconPage),
            );
          },
        ));
  }
}
