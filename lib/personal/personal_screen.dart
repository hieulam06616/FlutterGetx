import 'package:demo_get/login/login_screen.dart';
import 'package:demo_get/personal/personal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PersonalScreen extends GetWidget<PersonalController> {
  @override
  Widget build(BuildContext context) {
    PersonalController c = Get.put(PersonalController());

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Obx(() => Text('Obx: ${c.count.value}')),
            ),
            TextButton(
                onPressed: () {
                  c.change();
                },
                child: Text("COUNT")),
            TextButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                child: Text("LoginScreen"))
          ],
        ),
      ),
    );
  }
}
