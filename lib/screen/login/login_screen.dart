import 'package:demo_get/controllers/personal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../controllers/login_controller.dart';

// ignore: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
 
  @override
  Widget build(BuildContext context, {controllerSuper}) {
   PersonalController c = Get.find();
   LoginController c2 = Get.put(LoginController());
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child:  Obx(
                      () => Text('Obx: ${c.count}')
              ),
            ),
            TextButton(onPressed: (){
              c2.tru();
            }, child: Text("COUNT")),
            TextButton(onPressed: (){
              Get.back();
            }, child: Text("BACK")),
            Obx (() => Text ("${c2.name}")),
          ],
        ),
      ),
    );
  }
}
