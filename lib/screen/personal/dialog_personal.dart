  import 'package:flutter/material.dart';

void show({context, controller}) {
      Dialog errorDialog = Dialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0)), //this right here
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                controller: controller.nameTextFieldController,
                onChanged: (text) {},
                style: TextStyle(fontSize: 16.0),
                decoration: InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
              // Obx(
              //   () => 
                TextField(
                  onChanged: (text) {
                    controller.count.value = int.parse(text);
                    print("------------ ${controller.count.value} ${controller.count}");
                  },
                  style: TextStyle(fontSize: 16.0),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Value",
                    hintStyle: TextStyle(
                      fontSize: 16.0,
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              // ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                    controller.addBook();
                
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.purple, fontSize: 18.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.purple, fontSize: 18.0),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      );
      showDialog(
          context: context, builder: (BuildContext context) => errorDialog);
    }
