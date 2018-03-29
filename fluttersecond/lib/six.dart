import 'package:flutter/material.dart';

void main() {
  runApp(new Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MyHome());
  }
}


class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyHomeImpl();
  }
}


class MyHomeImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("haha"),),);
  }

}