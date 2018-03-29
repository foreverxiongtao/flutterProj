import 'package:flutter/material.dart';


void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "布局测试", home: new HomeWidget());
  }

}


class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeWidgetImpl();
  }

}

/***
 * 获取一行多列
 */
Widget getFirstWedget() {
  return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
          children: [
            new Expanded(
                child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      new Container(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: new Text(
                              '红花山公园',
                              style: new TextStyle(
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                      new Text(
                          '深圳市，光明新区，公明镇中心',
                          style: new TextStyle(
                              color: Colors.grey[500]
                          )
                      )
                    ]
                )
            ),
            new Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            new Text('66')
          ]
      )
  );
}


/***
 * 获取单个按钮
 */
Column getButtonColumn(IconData icon, String label, BuildContext context) {
  Color color = Theme
      .of(context)
      .accentColor;
  return
    new Column(
      children: <Widget>[
        new Icon(icon),
        new Container(
          margin: const EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 0.0),
          child: new Text(label, style: new TextStyle(
              color: color, fontSize: 16.00, fontStyle: FontStyle.italic),)
          ,)
      ],);
}

/***
 * 获取按钮布局
 */
Widget getButtonWedget(BuildContext context) {
  Column call_column = getButtonColumn(Icons.call, "电话", context);
  Column near_column = getButtonColumn(Icons.near_me, "导航", context);
  Column record_column = getButtonColumn(
      Icons.record_voice_over, "通讯录", context);
  return new Container(
      margin: const EdgeInsets.fromLTRB(0.00, 20.00, 0.00, 20.00),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          call_column,
          near_column,
          record_column
        ],
      )
  );
}


Widget getImagesList(BuildContext context) {
  return new Container(child: new Row(
    children: <Widget>[
      new Image.asset("assets/pic1.jpg"),
      new Image.asset("assets/pic2.jpg"),
      new Image.asset("assets/pic3.jpg")
    ],
    mainAxisAlignment:MainAxisAlignment.spaceAround,
  ),);
}




class HomeWidgetImpl extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = getImagesList(context);
    return new Scaffold(
      body: titleSection, appBar: new AppBar(title: new Text("布局测试"),),);
  }
}





