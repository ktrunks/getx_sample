import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:getx/route/app_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Get x',
      initialRoute: '/',
      getPages: AppScreens.pages,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.rightToLeft,
    );
  }
}
