import 'package:clone_whats/src/controllers/chat_controller.dart';
import 'package:clone_whats/src/ui/pages/chat/components/chat_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: GetBuilder<ChatController>(
        builder: (chatController) {
          if (chatController.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (chatController.chats.isNotEmpty) {
            return ListView.builder(
              itemCount: chatController.chats.length,
              itemBuilder: (_, index) => ChartCustom(
                name: chatController.chats[index].nameChat ?? '',
                countMessage: chatController.chats[index].countMessage ?? 0,
                hour: chatController.chats[index].hour ?? '',
              ),
            );
          }

          return const Center(
            child: Text('OPS!'),
          );
        },
      ),
    );
  }
}
