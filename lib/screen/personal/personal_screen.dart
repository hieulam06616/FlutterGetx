import 'package:demo_get/screen/login/login_screen.dart';
import 'package:demo_get/controllers/personal_controller.dart';
import 'package:demo_get/screen/personal/dialog_personal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PersonalScreen extends GetWidget<PersonalController> {
  @override
  Widget build(BuildContext context) {
    PersonalController c = Get.put(PersonalController());


  
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: Obx(() => Text('Obx: ${c.listBooks.length}')),
            ),
            TextButton(
                onPressed: () {
                  show(context: context, controller: c);
                },
                child: Text("COUNT")),
            TextButton(
                onPressed: () {
                  Get.to(LoginScreen());
                },
                child: Text("LoginScreen")),
            Expanded(
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: c.listBooks.length,
                  itemBuilder: (BuildContext context, int index) => Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                    decoration: new BoxDecoration(
                      color: Colors.green.withOpacity(0.5),
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(153, 153, 153, 0.5),
                          blurRadius: 3.0,
                          spreadRadius: 0.0,
                          offset: Offset(
                            0.0,
                            3.0,
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(child: Text(c.listBooks[index].name)),
                        Text(c.listBooks[index].value.toString()),
                        TextButton(
                            onPressed: () {
                              c.deleteBook(index);
                            },
                            child: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
