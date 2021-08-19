import 'package:fire_chatx/app/domain/entities/message.dart';
import 'package:fire_chatx/app/domain/entities/request/empty_request.dart';
import 'package:fire_chatx/app/domain/repositories/message_repository.dart';
import 'package:fire_chatx/app/domain/use_cases/base_use_case.dart';

class GetMessages implements BaseUseCase<List<Message>, EmptyRequest> {
  final MessageRepository _messageRepository;

  GetMessages(this._messageRepository);
  @override
  Future<List<Message>> call(EmptyRequest request) {
    return _messageRepository.getMessages();
  }
}
