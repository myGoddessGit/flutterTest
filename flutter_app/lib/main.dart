import 'package:flutter/material.dart';
import 'package:flutter_app/imagepick/ImagePicker.dart';
import 'package:flutter_app/awesomelist/views/home.dart';
import 'package:flutter_app/ui/home_page.dart';
import 'package:flutter_app/ui/user_provider.dart';
import 'package:flutter_app/home/HomePageTwo.dart';
import 'package:flutter_app/banner/SwiperViewPage.dart';
import 'package:flutter_app/guide/GuideOneView.dart';
import 'package:flutter_app/guide/GuideTwoView.dart';
import 'package:flutter_app/banner/GridViewMore.dart';
import 'package:flutter_app/guide/GridViews.dart';
import 'package:flutter_app/news/FlutterNews.dart';
import 'package:flutter_app/futureview/BeautifulView.dart';
import 'package:flutter_app/gridview/GridView.dart';
import 'package:flutter_app/ui/demo_time.dart';
import 'package:flutter_app/honglongdetails/SmallCard.dart';
import 'package:flutter_app/honglong/MainPage.dart';
import 'package:flutter_app/honglongdetails/PesonalNumber.dart';
import 'package:flutter_app/honglongdetails/UpdateNumber.dart';
import 'package:flutter_app/honglongdetails/SettingView.dart';
import 'honglong/JLQView.dart';
import 'package:flutter_app/honglongview/LoginView.dart';
import 'honglongview/FindPassView.dart';
import 'guide/TestView.dart';
import 'citypick/CityPicker.dart';
import 'longpress/LongPress.dart';
import 'daily_utils/oclock.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: DemoHome(),
      initialRoute: '/',
      routes: {
        '/imagePicker' : (BuildContext context){
          return  ImagePickerWidget();
        },
        '/winView' : (BuildContext context){
          return  MyHomePage();
        },
//        '/loginView' : (BuildContext context){
//          return  UserContainer(user: null, child: new HomePage());
//        },
        '/historyView' : (BuildContext context){
          return  HomePageTwo();
        },
        '/swiperView' : (BuildContext context){
          return SwiperViewPage();
        },
        '/guideView' : (BuildContext context){
          return GuideOneView();
        },
        '/guideViewTwo' : (BuildContext context){
          return GuideTwoView();
        },
        '/gridView' : (BuildContext context){
          return GridViewMore();
        },
        '/gridViews' : (BuildContext context){
          return PhotoViewPage();
        },
        '/newsView' : (BuildContext context) {
          return FlutterNews();
        },
        '/likeView' : (BuildContext context) {
          return BeautifulView();
        },
        '/gridViewss' : (BuildContext context) {
          return GridDemo();
        },
        '/timeView' : (BuildContext context) {
          return TimeDemo();
        },
        '/cardView' : (BuildContext context) {
          return SmallCard();
        },
        '/mineView' : (BuildContext context) {
          return MainPage();
        },
        '/numberView' : (BuildContext context) {
          return PersonalNumber();
        },
        '/updateView' : (BuildContext context) {
          return UpdateNumber();
        },
        '/settingView': (BuildContext context) {
          return SettingView();
        },
        '/JLQView' : (BuildContext context) {
          return JLQView();
        },
        '/HLlongin' : (BuildContext context) {
          return LoginView();
        },
        '/Findpass' : (BuildContext context) {
          return FindPassView();
        },
        '/testview' : (BuildContext context) {
          return TestView();
        },
        '/citypick' : (BuildContext context) {
          return CityPage();
        },
        '/longpress' : (BuildContext context) {
          return LongPressDemo(title: "点击位置");
        },
        '/oclock' : (BuildContext context){
          return Oclock();
        }
      },
    );
  }
}
class DemoHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("DemoHome"),
      ),
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("MyHomePage"),
                onPressed: (){
                  Navigator.of(context).pushNamed('/winView');
                }
            ),
            RaisedButton(
              child: Text("HistoryView"),
              onPressed: (){
                Navigator.of(context).pushNamed('/historyView');
              },
            ),
            RaisedButton(
              child: Text('SwiperView'),
              onPressed: (){
                Navigator.of(context).pushNamed('/swiperView');
              },
            ),
            RaisedButton(
              child: Text('GuideView'),
              onPressed: (){
                Navigator.of(context).pushNamed('/guideView');
              },
            ),
            RaisedButton(
              child: Text('GridView'),
              onPressed: (){
                Navigator.of(context).pushNamed('/gridView');
              },
            ),
            RaisedButton(
              child: Text('PageView'),
              onPressed: (){
                Navigator.of(context).pushNamed('/gridViews');
              },
            ),
            RaisedButton(
              child: Text('FlutterNews'),
              onPressed: () {
                Navigator.of(context).pushNamed('/newsView');
              },
            ),
            RaisedButton(
              child: Text('FutureView'),
              onPressed: () {
                Navigator.of(context).pushNamed('/likeView');
              },
            ),
            RaisedButton(
              child: Text('GridViewsDemo'),
              onPressed: () {
                Navigator.of(context).pushNamed('/gridViewss');
              },
            ),
            RaisedButton(
              child: Text('HongLongView'),
              onPressed: () {
                Navigator.of(context).pushNamed('/mineView');
              },
            ),
            RaisedButton(
              child: Text('LoginView'),
              onPressed: () {
                Navigator.of(context).pushNamed('/HLlongin');
              },
            ),
            RaisedButton(
              child: Text('CityPick'),
              onPressed: (){
                Navigator.of(context).pushNamed('/citypick');
              },
            ),
            RaisedButton(
              child: Text('LongPress'),
              onPressed: (){
                Navigator.of(context).pushNamed('/longpress');
              },
            ),
            RaisedButton(
              child: Text('ClockNow'),
              onPressed: (){
                Navigator.of(context).pushNamed('/oclock');
              },
            )
          ],
        ),
      ),
    );
  }
}










