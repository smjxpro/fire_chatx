import 'package:fire_chatx/app/data/remote/data_sources/message_source.dart';
import 'package:fire_chatx/app/data/repositories/message_repository.dart';
import 'package:fire_chatx/app/domain/repositories/message_repository.dart';
import 'package:fire_chatx/app/domain/use_cases/get_messages.dart';
import 'package:fire_chatx/app/domain/use_cases/save_message.dart';
import 'package:fire_chatx/app/presentation/manager/home_page_controller.dart';
import 'package:get/get.dart';

class HomePageBinding implements Bindings {
  final find = Get.find;
  @override
  void dependencies() {
    Get.lazyPut<MessageSource>(() => MessageSourceFirebaseImpl());
    Get.lazyPut<MessageRepository>(() => MessageRepositoryImpl(find()));
    Get.lazyPut(() => GetMessages(find()));
    Get.lazyPut(() => SaveMessage(find()));
    Get.lazyPut(() => HomePageController(find(), find()));
  }
}
