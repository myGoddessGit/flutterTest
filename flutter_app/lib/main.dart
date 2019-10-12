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
import 'sex_select/SexSelected.dart';
import 'package:flutter_app/news/FlutterNews.dart';
import 'package:flutter_app/futureview/BeautifulView.dart';
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
        '/wypView' : (BuildContext context){
          return  MyHomePage();
        },
        '/loginView' : (BuildContext context){
          return  UserContainer(user: null, child: new HomePage());
        },
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
        '/sexViews' : (BuildContext context){
          return SexSelected();
        },
        '/newsView' : (BuildContext context) {
          return FlutterNews();
        },
        '/likeView' : (BuildContext context) {
          return BeautifulView();
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
      body: new Column(
        children: <Widget>[
          RaisedButton(
            child: Text("ImagePicker"),
            onPressed:(){
              Navigator.of(context).pushNamed('/imagePicker');
            },
          ),
          RaisedButton(
            child: Text("MyHomePage"),
            onPressed: (){
              Navigator.of(context).pushNamed('/wypView');
            }
          ),
          RaisedButton(
            child: Text("LoginView"),
            onPressed: (){
              Navigator.of(context).pushNamed('/loginView');
            },
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
            child: Text('sexView'),
            onPressed: (){
              Navigator.of(context).pushNamed('/sexViews');
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
          )
        ],
      ),
    );
  }
}










