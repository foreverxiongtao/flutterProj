import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:fluttersecond/comm/widget/icon_tab.dart';

/***
 * 首页tab
 */


const int INDEX_JOB = 0;
const int INDEX_COMPANY = 1;
const int INDEX_MESSAGE = 2;
const int INDEX_MINE = 3;

class TabMainComponent extends StatefulWidget {

  String userName;
  String pwd;


  TabMainComponent(String pwd, {@required this.userName}) {
    this.userName = userName;
    this.pwd = pwd;
  }

  @override
  State<StatefulWidget> createState() {
    return new TabMainComponentImpl();
  }
}


class TabMainComponentImpl extends State<StatefulWidget>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController controller;
  VoidCallback listener;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
    new TabController(length: 4, vsync: this, initialIndex: _currentIndex);
    listener = () {
      setState(() {
        _currentIndex = this.controller.index;
      });
    };
    controller.addListener(listener);
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("主页面")),
      body: new Builder(builder: getTabMain),
      bottomNavigationBar: new Builder(builder: getNavigationBar),
    );
  }


  /***
   * 创建tab bar
   */
  Widget getNavigationBar(BuildContext context) {
    return new Material(
      child: new TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          new IconTab(
              icon: _currentIndex == INDEX_JOB
                  ? "assets/images/ic_main_tab_company_pre.png"
                  : "assets/images/ic_main_tab_company_nor.png",
              text: "主页",
              color: _currentIndex == INDEX_JOB ? Colors.red : Colors.grey
          ),
          new IconTab(
              icon: _currentIndex == INDEX_COMPANY
                  ? "assets/images/ic_main_tab_contacts_pre.png"
                  : "assets/images/ic_main_tab_contacts_nor.png",
              text: "联系人",
              color: _currentIndex == INDEX_COMPANY ? Colors.red : Colors.grey
          ),
          new IconTab(
              icon: _currentIndex == INDEX_MESSAGE
                  ? "assets/images/ic_main_tab_find_pre.png"
                  : "assets/images/ic_main_tab_find_nor.png",
              text: "发现",
              color: _currentIndex == INDEX_MESSAGE ? Colors.red : Colors.grey
          ),
          new IconTab(
              icon: _currentIndex == INDEX_MINE
                  ? "assets/images/ic_main_tab_my_pre.png"
                  : "assets/images/ic_main_tab_my_nor.png",
              text: "我的",
              color: _currentIndex == INDEX_MINE ? Colors.red : Colors.grey
          )
        ],
      ),

    );
  }


  Widget getTabMain(BuildContext context) {
    return new Container(
      child: new Text("主页面", style: new TextStyle(color: Colors.red),),
      color: Colors.green,);
  }
}
