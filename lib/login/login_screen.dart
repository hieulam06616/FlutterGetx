import 'dart:async';
import 'package:demo_get/personal/personal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
 
  @override
  Widget build(BuildContext context, {controllerSuper}) {
   PersonalController c = Get.put(PersonalController());
   LoginController c2 = Get.put(LoginController());
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:  Obx(
                      () => Text('Obx: ${c.count.value}')
              ),
            ),
            TextButton(onPressed: (){
              c2.tru();
            }, child: Text("COUNT")),
            TextButton(onPressed: (){
              Get.back();
            }, child: Text("BACK"))
          ],
        ),
      ),
    );
  }
}
