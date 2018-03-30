import 'package:flutter/material.dart';

class MineComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MineComponentImpl();
  }
}


class MineComponentImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text(
      "我的", style: new TextStyle(color: Colors.white, fontSize: 20.00),),
      centerTitle: true, backgroundColor: Colors.greenAccent,elevation: 0.0,automaticallyImplyLeading: false,),
      body: new Builder(builder: getBodyContent),);
  }

  Widget getBodyContent(BuildContext context) {
    return new Container(child: new Text("我的内容体"),);
  }
}