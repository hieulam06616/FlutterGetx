import 'dart:ui';
import 'package:demo_get/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
      // HomeController c = Get.put(HomeController());
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.linearToSrgbGamma(),
          image: NetworkImage(
              "https://images.pexels.com/photos/3902882/pexels-photo-3902882.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('covid'.tr),
          backgroundColor: Colors.white10,
          elevation: 0,
          centerTitle: true,
        ),
        body:  Container(
              child: Obx(() => Text('Obx: ${controller.count}')),
            ),
      ),
    );
  }
}