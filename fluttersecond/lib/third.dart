import 'package:flutter/material.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: "布局练习", home: new HomeWidget());
  }
}


class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeWidgetImpl();
  }
}

class HomeWidgetImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(body: new Container(
        child: new Container(
          color: Colors.red,
          width: 100.00,
          height: 100.00,
          child: new Text("测试空间",
              style: new TextStyle(color: Colors.white, fontSize: 20.00)
          ),
          alignment: Alignment.center,
        ),
        color: Colors.green,
        alignment: Alignment.center)
    );
  }

}