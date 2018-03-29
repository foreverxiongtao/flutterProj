import 'package:flutter/material.dart';
import 'package:fluttersecond/tab/main.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("MyApp build");
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new LoginComponent(),
    );
  }
}

//登录页面
class LoginComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginComponentImpl();
  }
}

final GlobalKey<FormFieldState<String>> _passwordFieldKey = new GlobalKey<
    FormFieldState<String>>();


class LoginComponentImpl extends State<StatefulWidget> {

  String userName = "";
  String pwd = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("登录"),),
        body: new Builder(builder: getContent));
  }


  Widget getContent(BuildContext context) {
    return new Container(child:
    new Column(children: <Widget>[
      new Container(
        child: new TextField(decoration: new InputDecoration(labelText: "用户名"),
          maxLength: 10,
          onChanged: userInputChange,),
        margin: const EdgeInsets.fromLTRB(20.00, 30.00, 20.00, 0.00),),
      new Container(
        child: new TextField(
          decoration: new InputDecoration(labelText: "密码"),
          obscureText: true,
          keyboardType: TextInputType.number, onChanged: pwdInputChange,),
        margin: const EdgeInsets.fromLTRB(20.00, 00.00, 20.00, 20.00),),
      new Center(
          child: new Row(children: <Widget>[
            new RaisedButton(onPressed: () {
              submit(context);
            }, child: new Text("登录"),),
            new RaisedButton(onPressed: () {
              submit(context);
            }, child: new Text("注册"),),
          ], mainAxisAlignment: MainAxisAlignment.spaceEvenly,))
    ]),);
  }


  void userInputChange(String value) {
    print(value);
    userName = value;
  }


  void pwdInputChange(String value) {
    pwd = value;
  }


  /***
   * 登录
   */
  void submit(BuildContext mContext) {
    {
      if (userName == null || userName == "") {
        Scaffold.of(mContext).showSnackBar(const SnackBar(
            content: const Text('用户名不能为空')
        ));
        return;
      }
      if (pwd == null || pwd == "") {
        Scaffold.of(mContext).showSnackBar(
            const SnackBar(content: const Text("密码不能为空")));
        return;
      }
      navigateToTabMain(mContext, userName, pwd);
    }
  }

  void navigateToTabMain(BuildContext context, String userName, String pwd) {
    Navigator.push(context, new MaterialPageRoute<TabMainComponent>(
        builder: (BuildContext context) =>
        new TabMainComponent(pwd, userName: userName,)
    ));
  }
}