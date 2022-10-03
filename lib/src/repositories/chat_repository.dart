import 'package:clone_whats/src/models/chat_model.dart';

import '../models/response_model.dart';

class ChatRepository {
  Future<ResponseModel<List<ChatModel>>> getAll() async {
    await Future.delayed(const Duration(seconds: 5));
    return ResponseModel(
      model: [
        ChatModel(
          countMessage: 110,
          nameChat: 'Grupo Name 01',
          hour: '12:12',
        ),
        ChatModel(
          countMessage: 60,
          nameChat: 'Grupo Name 02',
          hour: '09:40',
        ),
        ChatModel(
          countMessage: 1,
          nameChat: 'Grupo Name 03',
          hour: '13:20',
        ),
        ChatModel(
          countMessage: 200,
          nameChat: 'Grupo Name 04',
          hour: '15:20',
        ),
        ChatModel(
          countMessage: 60,
          nameChat: 'Grupo Name 02',
          hour: '09:40',
        ),
        ChatModel(
          countMessage: 1,
          nameChat: 'Grupo Name 03',
          hour: '13:20',
        ),
        ChatModel(
          countMessage: 200,
          nameChat: 'Grupo Name 04',
          hour: '15:20',
        ),
        ChatModel(
          countMessage: 60,
          nameChat: 'Grupo Name 02',
          hour: '09:40',
        ),
        ChatModel(
          countMessage: 1,
          nameChat: 'Grupo Name 03',
          hour: '13:20',
        ),
        ChatModel(
          countMessage: 200,
          nameChat: 'Grupo Name 04',
          hour: '15:20',
        ),
        ChatModel(
          countMessage: 60,
          nameChat: 'Grupo Name 02',
          hour: '09:40',
        ),
        ChatModel(
          countMessage: 1,
          nameChat: 'Grupo Name 03',
          hour: '13:20',
        ),
        ChatModel(
          countMessage: 200,
          nameChat: 'Grupo Name 04',
          hour: '15:20',
        ),
      ],
      isError: false,
      messageError: '',
    );
  }
}
