import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/user_controller.dart';
import 'item_navigation.dart';

class TopNavigationBarCutom extends StatelessWidget {
  const TopNavigationBarCutom({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
      builder: (userController) {
        return Container(
          height: 50,
          color: Theme.of(context).backgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Get.find<UserController>().setPage(page: 0);
                },
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Icon(
                      Icons.camera_alt,
                      color: Color.fromARGB(255, 170, 167, 158),
                    ),
                  ),
                ),
              ),
              ItemNavigationCutom(
                title: 'CONVERSAS',
                page: 0,
                userController: userController,
              ),
              ItemNavigationCutom(
                title: 'STATUS',
                page: 1,
                userController: userController,
              ),
              ItemNavigationCutom(
                title: 'CHAMADAS',
                page: 2,
                userController: userController,
              ),
            ],
          ),
        );
      },
    );
  }
}
