import 'package:fire_chatx/app/presentation/navigation/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fire Chat',
      getPages: AppPages.pages,
      initialRoute: AppPages.initialRoute,
    );
  }
}
