import 'package:fire_chatx/app/domain/entities/message.dart';
import 'package:fire_chatx/app/domain/repositories/message_repository.dart';
import 'package:fire_chatx/app/domain/use_cases/base_use_case.dart';

class SaveMessage implements BaseUseCase<void, Message> {
  final MessageRepository _messageRepository;

  SaveMessage(this._messageRepository);

  @override
  Future<void> call(Message request) {
    return _messageRepository.saveMessage(request);
  }
}
