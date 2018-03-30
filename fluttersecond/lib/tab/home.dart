import 'package:flutter/material.dart';

class HomeComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeComponentImpl();
  }
}


class HomeComponentImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text(
      "主頁", style: new TextStyle(color: Colors.white, fontSize: 20.00),),
      centerTitle: true, backgroundColor: Colors.greenAccent,elevation: 0.0,automaticallyImplyLeading: false,),
      body: new Builder(builder: getBodyContent),);
  }

  Widget getBodyContent(BuildContext context) {
    return new Container(child: new Text("主頁内容体"),);
  }
}