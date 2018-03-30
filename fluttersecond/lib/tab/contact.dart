import 'package:flutter/material.dart';


/***
 * 联系人
 */
class ContactComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ContactComponentImpl();
  }
}


class ContactComponentImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text("联系人",style: new TextStyle(color: Colors.white,fontSize: 20.00),),
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
      automaticallyImplyLeading: false,),body:new Builder(builder: getBodyContent),);
  }

  Widget getBodyContent(BuildContext context) {
    return new Container(child: new Text("联系人内容体"),);
  }

}


