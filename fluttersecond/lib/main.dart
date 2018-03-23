import 'package:flutter/material.dart';

void main() {
  var number = 43;
  print(number);
  print("number is ${number}");
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("MyApp build");
    return new MaterialApp(
      title: 'Sample App',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      home: new MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return new _MyHomeWeight();
  }
}

class _MyHomeWeight extends State<StatefulWidget> {
  String text = "hhhh";
  int count = 0;
  bool toggle = true;

  void upldateText() {
    setState(() {
      count++;
    });
  }

  Widget getTogleChild() {
    if (toggle) {
      return new MaterialButton(onPressed: () {},
          child: new Text("按钮2", style: new TextStyle(color: Colors.red)),
          padding: new EdgeInsets.only(left: 10.0, right: 10.0)

      );
    }
    else {
      return new Text('文本2', style: new TextStyle(color: Colors.green));
    }
  }

  void chageText() {
    setState(() {
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) =>
      new Scaffold(
        appBar: new AppBar(
          title: new Text("Sample App"),
        ),
        body: new Center(
            child: getTogleChild()
        ),
        floatingActionButton: new FloatingActionButton(
            onPressed: chageText,
            tooltip: "改变样式",
            child: new Icon(Icons.update)),
      );
}