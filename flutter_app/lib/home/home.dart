import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget{
  String result;

  HomePage(this.result);

  State<StatefulWidget> createState(){
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>{
  int _currentIndex = 0;
  var _pageController = PageController(initialPage: 0);
  var _bottomText = ['签到','我'];
  var _bottomIcons = [
    [
    Icon(Icons.category,color: Colors.grey,),
    Icon(Icons.category,color: Colors.blue),
  ],
  [
    Icon(Icons.account_circle,color:Colors.grey),
    Icon(Icons.account_circle,color: Colors.blue,),
  ]
  ];
  Icon changeIconStyle(int curIndex){
    if(curIndex == _currentIndex){
      return _bottomIcons[curIndex][1];
    }
    return _bottomIcons[curIndex][0];
  }

  Text changeTextStyle(int curIndex){
    if(curIndex == _currentIndex){
      return Text(_bottomText[curIndex],
          style: TextStyle(color: Colors.blue),
      );
    }else {
      return Text(_bottomText[curIndex],
          style: TextStyle(color: Colors.grey),
      );
    }
  }
  void _pageChange(int index){
    setState(() {
      if(_currentIndex != index){
        _currentIndex = index;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: PageView.builder(
        onPageChanged: _pageChange,
        controller: _pageController,
        itemBuilder: (BuildContext context, int index) {
          var str =
          (index == 0) ? "这里是【HomePage】->【签到】页面" : "这里是【HomePage】->【我】页面";
          return new Center(
            child: new Container(
              width: 340.0,
              child: new Card(
                color: Colors.blue,
                elevation: 16.0,
                child: new FlatButton(
                  child:
                  new Text(str, style: new TextStyle(color: Colors.white)),
                ),
              ),
            ),
          );
        },
        itemCount: _bottomText.length,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: changeIconStyle(0),title: changeIconStyle(0)),
          BottomNavigationBarItem(
            icon: changeIconStyle(1),title: changeTextStyle(1)),
        ],
        //设置当前的索引
        currentIndex: _currentIndex,
        //tabBottom点击监听
        onTap: (int index){
            _pageController.animateToPage(index, duration: Duration(seconds: 2), curve: ElasticInCurve(0.8));
            _pageChange(index);
            _currentIndex = index;
        }
      ),
    );
  }
}