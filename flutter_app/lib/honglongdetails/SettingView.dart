import 'package:flutter/material.dart';

class SettingView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingViewState();
  }
}

class SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment(-1.0, 0.0),
          margin: EdgeInsets.only(left: 90),
          child: Text('设置', style: TextStyle(fontSize: 16 , color: Colors.white),),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 20,
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
            ),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {

            },
            child: _widget('用户反馈'),
          ),
          _container,
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {

            },
            child: _widget('关于我们'),
          ),
          _container,
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {

            },
            child: _widget('版本更新'),
          ),
          _container,
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {

            },
            child: _widget('清理缓存'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {

            },
            child: Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 40),
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                //color: Color(0XFFEB371B),
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
                gradient: LinearGradient(colors: [Color(0XFFEB371B),Color(0XFFf76120)])
              ),
              child: Center(
                child: Text('退出账号', style: TextStyle(fontSize: 14, color: Colors.white),),
              )
            ),
          ),
        ],
      ),
    );
  }
  Widget _widget(String title){
    return Container(
      height: 54,
      decoration: BoxDecoration(
        color: Color(0XFFEEE),
      ),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 15),
            child: Text(title, style: TextStyle(fontSize: 15, color: Color(0XFF3B3F4F)),),
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 254),
            child: Image.asset('assets/icon_profile_arrow.png',width: 14, height: 14,),
          ),
        ],
      ),
    );
  }
  Container _container = new Container (
    margin: EdgeInsets.only(left: 15,),
    alignment: Alignment(-1.0, 0.0),
    child: Divider(
      color: Color(0xFFEFF1F5),
      //color: Colors.blue,
      height: 0.5,
    ),
  );
}