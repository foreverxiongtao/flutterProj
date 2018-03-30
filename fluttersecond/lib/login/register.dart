import 'package:flutter/material.dart';

class RegisterComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RegisterComponentImpl();
  }
}


class RegisterComponentImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(appBar: new AppBar(title: new Text(
      "注册", style: new TextStyle(color: Colors.white, fontSize: 20.00),),
      centerTitle: true, backgroundColor: Colors.greenAccent,),
      body: new Builder(builder: getBodyContent),);
  }

  Widget getBodyContent(BuildContext context) {
    return new ListView(children: getListViewData(context),);
  }

  getListViewData(BuildContext context) {
    List<Widget> list = [];
    for (int i = 0; i < 100; i++) {
      Widget item = new GestureDetector(
        child: new Padding(padding: const EdgeInsets.all(10.00),
          child: new Container(
            child: new Text("row----$i-----"), color: Colors.red,),),
        onTap: () {
            setOnItemClickListener(context,i);
        },);
      list.add(item);
    }
    return list;
  }

  void setOnItemClickListener(BuildContext context, var position) {
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text("current position is $position")));
    // ignore: const_eval_throws_exception, const_with_non_constant_argument, invalid_constant
  }
}