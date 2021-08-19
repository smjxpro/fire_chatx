import 'package:fire_chatx/app/data/remote/data_sources/message_source.dart';
import 'package:fire_chatx/app/domain/entities/message.dart';
import 'package:fire_chatx/app/domain/repositories/message_repository.dart';

class MessageRepositoryImpl implements MessageRepository {
  final MessageSource _messageSource;

  MessageRepositoryImpl(this._messageSource);

  @override
  Future<List<Message>> getMessages() {
    return _messageSource.getMessages();
  }

  @override
  Future<void> saveMessage(Message message) {
    return _messageSource.saveMessage(message);
  }
}
