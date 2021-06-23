import 'package:get/get.dart';
import 'package:getx/binding%20/second_binding.dart';
import 'package:getx/ui/home/home_screen.dart';
import 'package:getx/ui/home/second.dart';

class AppScreens {
  static final pages = [
    GetPage(
      name: '/',
      page: () => HomeScreen(),
    ),
    GetPage(
        name: '/second_screen', page: () => Second(), binding: SecondBinding()),
  ];
}
