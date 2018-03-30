import 'package:flutter/material.dart';

/****
 * 发现组件
 */
class FindConponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new FindConponentImpl();
  }
}

class FindConponentImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text(
      "发现", style: new TextStyle(color: Colors.white, fontSize: 20.00),),
      automaticallyImplyLeading: false,
      centerTitle: true, backgroundColor: Colors.greenAccent,),
      body: new Builder(builder: getBodyContent),
    );
  }

  Widget getBodyContent(BuildContext context) {
    return new Container(child: new Text("发现内容体"),);
  }

}