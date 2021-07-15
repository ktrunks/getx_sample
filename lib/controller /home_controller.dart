import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  var count = 0;

  var data = 'test';

  var integerData = 0.obs;

  void increment() {
    count++;
    update();
  }

  void updateString(String data) {
    this.data = data;
    update();
  }

  void updateInteger() {
    integerData.value++;
  }
}
