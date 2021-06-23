import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:getx/controller%20/second_controller.dart';

class SecondBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SecondController>(SecondController());
    // Get.lazyPut<SecondController>(() => SecondController());
  }
}
