import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListDefaultScreen extends StatefulWidget {
  ListDefaultScreen({Key key, this.title}) : super(key: key);

  String title;
  @override
  _ListDefaultState createState() => new _ListDefaultState();
}

class _ListDefaultState extends State<ListDefaultScreen> {
  List<Map<String, dynamic>> list = [
    {"name": "name 1", "value": 123},
    {"name": "name 2", "value": 123},
    {"name": "name 3", "value": 123},
    {"name": "name 4", "value": 123},
    {"name": "name 5", "value": 123},
  ];

  final nameTextFieldController = TextEditingController();
  String number;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void show() {
    Dialog errorDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: nameTextFieldController,
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
            TextField(
              onChanged: (text) {
                setState(() {
                  number = text;
                });
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
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      list.add({
                        "name": nameTextFieldController.text,
                        "value": number
                      });
                    });
                    nameTextFieldController.clear();
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/img.jpg",
                fit: BoxFit.contain,
              ),
              TextButton(
                onPressed: () {
                  show();
                },
                child: Text("Thêm"),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: list.length,
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

                    // gradient: LinearGradient(
                    //           colors: <Color>[
                    //                   Color(0xFF0D47A1),
                    //                   Color(0xFF1976D2),
                    //                   Color(0xFF42A5F5),
                    //                   ],
                    //           begin: Alignment.topCenter,
                    //           end: Alignment.bottomCenter,
                    // ),
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
                      Expanded(child: Text(list[index]["name"])),
                      Text(list[index]["value"]
                          .toString()), // Text("${list[index]["value"]}"), // vì value là số
                      TextButton(
                          onPressed: () {
                            setState(() {
                              list.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              show();
            },
            child: Text("Thêm"),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) => Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                decoration: new BoxDecoration(
                  color: Colors.green.withOpacity(0.5),

                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),

                  // gradient: LinearGradient(
                  //           colors: <Color>[
                  //                   Color(0xFF0D47A1),
                  //                   Color(0xFF1976D2),
                  //                   Color(0xFF42A5F5),
                  //                   ],
                  //           begin: Alignment.topCenter,
                  //           end: Alignment.bottomCenter,
                  // ),
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
                    Expanded(child: Text(list[index]["name"])),
                    Text(list[index]["value"]
                        .toString()), // Text("${list[index]["value"]}"), // vì value là số
                    TextButton(
                        onPressed: () {
                          setState(() {
                            list.removeAt(index);
                          });
                        },
                        child: Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
