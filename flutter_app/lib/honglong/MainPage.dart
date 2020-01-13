import 'package:flutter/material.dart';
import 'package:flutter_app/honglong/ShouYe.dart';
import 'package:flutter_app/honglong/XZView.dart';
import 'package:flutter_app/honglong/XJView.dart';
import 'package:flutter_app/honglong/JLQView.dart';
import 'package:flutter_app/honglong/MineView.dart';
class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  int _tabIndex = 0;
  var tabImages;
  var appBarTitle = ['首页', '校招', '宣讲', '交流群', '我的'];

  //根据索引获取对应的normal或是press的icon
  Image getTabImage(path) {
    return Image.asset(path ,width: 18 , height: 18,);
  }
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex){
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  //获取bottomTab的颜色和文字
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return Text(appBarTitle[curIndex],
          style: TextStyle(color: Color(0xFF5CA6C8)));
    } else {
      return Text(appBarTitle[curIndex],
          style: TextStyle(color: Color(0xDD888888)));
    }
  }
  void initData() {
    //bottom的按压图片
    tabImages = [
      [getTabImage('assets/home.png'),getTabImage('assets/home_selected.png')],
      [getTabImage('assets/job_normal.png'),getTabImage('assets/job_pressed.png')],
      [getTabImage('assets/briefing_session_normal.png'),getTabImage('assets/briefing_session_selected.png')],
      [getTabImage('assets/job_exp_normal.png'),getTabImage('assets/job_exp_selected.png')],
      [getTabImage('assets/myself_normal.png'),getTabImage('assets/myself_selected.png')],
    ];
  }
  @override
  Widget build(BuildContext context) {
    initData();
    // TODO: implement build
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          ShouYe(),
          XZView(),
          XJView(),
          JLQView(),
          MineView(),
        ],
        index: _tabIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
          BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
          BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
          BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
          BottomNavigationBarItem(icon: getTabIcon(4), title: getTabTitle(4)),
        ],
        //设置显示的模式
        type: BottomNavigationBarType.fixed,
        //设置当前的索引
        currentIndex: _tabIndex,
        //tabBottom的点击监听
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}