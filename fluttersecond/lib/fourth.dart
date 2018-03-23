import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(home: new HomeWeight());
  }
}

class HomeWeight extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeWeightImpl();
  }

}

class HomeWeightImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("测试")),
        body: new Container(
            child: new Row(children: <Widget>[
              new Expanded(child: new Text(
                "第一列aaaaaaaaaaaaaaaaddddddddddddddccaaa",
                style: new TextStyle(color: Colors.red),)),
              new Expanded(child: new Text(
                "第二列", style: new TextStyle(color: Colors.blue),)),
              new Expanded(child: new Text(
                "第二三", style: new TextStyle(color: Colors.pink),))
            ],)
        )
    );
  }
}