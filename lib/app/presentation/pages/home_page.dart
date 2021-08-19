import 'package:fire_chatx/app/presentation/manager/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomePageController> {
  static final routeName = '/home';

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.messages.length,
                  itemBuilder: (context, index) {
                    final message = controller.messages[index];
                    return ListTile(
                      title: Text(message.text),
                      subtitle: Text(message.date.toString()),
                    );
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(border: Border.all()),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  onFieldSubmitted: (value) async {
                    controller.messageText.value = value;
                    await controller.onSaveMessage();
                    await controller.onGetMessage();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
