import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/binding%20/second_binding.dart';
import 'package:getx/controller%20/home_controller.dart';
import 'package:getx/ui/home/second.dart';

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
            ElevatedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.to(() => Second(), binding: SecondBinding());
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
