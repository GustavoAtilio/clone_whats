// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/state_manager.dart';

import 'package:clone_whats/src/models/chat_model.dart';
import 'package:clone_whats/src/repositories/chat_repository.dart';

class ChatController extends GetxController {
  late List<ChatModel> chats = [];
  final ChatRepository _chatRepository = ChatRepository();
  bool isLoading = false;

  ChatController() {
    getAll();
  }

  void setLoading(bool state) {
    isLoading = state;
    update();
  }

  Future getAll() async {
    setLoading(true);
    var response = await _chatRepository.getAll();
    chats = response.model;
    setLoading(false);
    update();
  }
}
