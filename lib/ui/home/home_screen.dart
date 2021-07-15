import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller%20/home_controller.dart';

class HomeScreen extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(builder: (_) {
              debugPrint('build of clicks');
              return Text(
                'clicks: ${controller.count}',
              );
            }),
            const SizedBox(
              height: 10,
            ),
            Obx(() => Text('Obx: ${controller.integerData}')),
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                // Get.to(() => Second(), binding: SecondBinding());
                /*Get.toNamed('/second_screen');*/
                controller.updateInteger();
              },
            ),
            GetBuilder<HomeController>(builder: (_) {
              debugPrint('build of string data');
              return Text(
                'data: ${controller.data}',
              );
            }),
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                controller.updateString('update');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.increment(),
      ),
    );
  }
}
