import 'package:fire_chatx/app/presentation/bindings/home_page_binding.dart';
import 'package:fire_chatx/app/presentation/pages/home_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final initialRoute = HomePage.routeName;
  static List<GetPage> pages = [
    GetPage(
        name: HomePage.routeName,
        page: () => HomePage(),
        binding: HomePageBinding())
  ];
}
