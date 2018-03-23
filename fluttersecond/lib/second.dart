import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(title: "动画", home: new MyHome());
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) :super(key: key);
  String title;

  @override
  State<StatefulWidget> createState() {
    return new MyHomeWeight();
  }
}

class MyHomeWeight extends State<StatefulWidget> with TickerProviderStateMixin {
  AnimationController controller;
  CurvedAnimation curve;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(appBar: new AppBar(title: new Text("动画测试")),
      body: new Container(
          child: new FadeTransition(
              opacity: curve,
              child: new FlutterLogo(
                size: 100.0,
              ))),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Fade',
        child: new Icon(Icons.brush),
        onPressed: () {
          controller.forward();
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

}