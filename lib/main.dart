import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'src/controllers/chat_controller.dart';
import 'src/controllers/user_controller.dart';
import 'src/ui/material_app_ui/material_app_ui.dart';

void main() {
  singleton();

  runApp(const MaterialAppUI());
}

// Injeção de dependência
void singleton() {
  // Injeção de dependência Usuáio
  Get.put(UserController());

  // Injeção de dependência Chat
  // Get.lazyPut<ChatController>(() => ChatController());
  Get.put(ChatController());
}
