import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller%20/home_controller.dart';
import 'package:getx/controller%20/second_controller.dart';

class Second extends StatelessWidget {
  final HomeController ctrl = Get.find();
  final controller = Get.put(SecondController());

  @override
  Widget build(context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${ctrl.count}"),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<HomeController>(builder: (_) {
            debugPrint('build of data  $_');
            return Text(
              'data : ${controller.data}',
            );
          }),
          ElevatedButton(
            child: Text('update string'),
            onPressed: () {
              controller.updateString();
            },
          ),
          GetBuilder<HomeController>(builder: (_) {
            debugPrint('build of integer data  $_');
            return Text(
              'integer : ${controller.integer}',
            );
          }),
          ElevatedButton(
            child: Text('update integer'),
            onPressed: () {
              controller.updateInteger();
            },
          ),
        ],
      ))),
    );
  }
}
