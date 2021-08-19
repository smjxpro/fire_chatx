import 'package:fire_chatx/app/domain/entities/message.dart';
import 'package:fire_chatx/app/domain/entities/request/empty_request.dart';
import 'package:fire_chatx/app/domain/use_cases/get_messages.dart';
import 'package:fire_chatx/app/domain/use_cases/save_message.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final GetMessages _getMessages;
  final SaveMessage _saveMessage;

  HomePageController(this._getMessages, this._saveMessage);

  final messages = RxList<Message>([]);
  final messageText = RxString('');

  @override
  void onInit() async {
    super.onInit();

    await onGetMessage();
  }

  onGetMessage() async {
    final response = await _getMessages.call(EmptyRequest());
    print("RESP: ${response.length}");
    messages.assignAll(response);
  }

  onSaveMessage() {
    final message = Message(text: messageText.value, date: DateTime.now());

    final response = _saveMessage.call(message);
  }
}
