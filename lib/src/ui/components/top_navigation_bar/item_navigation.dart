// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:clone_whats/src/controllers/user_controller.dart';

class ItemNavigationCutom extends StatelessWidget {
  final String title;
  final int page;
  final UserController userController;
  const ItemNavigationCutom({
    Key? key,
    required this.title,
    required this.page,
    required this.userController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentPage = userController.pageUser;
    return GestureDetector(
      onTap: () => userController.setPage(page: page),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color.fromARGB(255, 182, 185, 166),
            ),
          ),
          currentPage == page
              ? Container(
                  margin: const EdgeInsets.only(top: 5),
                  color: Theme.of(context).primaryColor,
                  height: 3,
                  width: 100,
                )
              : const SizedBox(height: 8),
        ],
      ),
    );
  }
}
