import 'package:fire_chatx/app/domain/entities/message.dart';
import 'package:firebase_database/firebase_database.dart';

abstract class MessageSource {
  Future<void> saveMessage(Message message);

  Future<List<Message>> getMessages();
}

class MessageSourceFirebaseImpl implements MessageSource {
  final DatabaseReference _messagesRef =
      FirebaseDatabase.instance.reference().child('messages');

  @override
  Future<void> saveMessage(Message message) {
    return _messagesRef.push().set(message.toJson());
  }

  @override
  Future<List<Message>> getMessages() async {
    List<Message> messages = [];

    DataSnapshot snapshot = await _messagesRef.once();

    (snapshot.value as Map).forEach((key, value) {
      final message = Message.fromJson(value);

      messages.add(message);
    });

    return messages;
  }
}
