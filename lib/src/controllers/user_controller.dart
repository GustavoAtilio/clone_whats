import 'package:clone_whats/src/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  Rx<UserModel> user = UserModel().obs;
  RxInt pageUser = 1.obs;
  final pageController = PageController();

  void setPage(int page) {
    pageUser.value = page;
    pageController.jumpToPage(page);
    update();
  }
}
