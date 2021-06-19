import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  var count = 0;

  var data = 'test';

  void increment() {
    count++;
    update();
  }

  void updateString(String data) {
    this.data = data;
    update();
  }
}
