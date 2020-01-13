import 'package:flutter/material.dart';

class LongPressDemo extends StatefulWidget {
  LongPressDemo({Key key, this.title}) : super(key: key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LongPressDemoState();
  }
}
class LongPressDemoState extends State<LongPressDemo> {

  double _globlePositionX = 0.0; //点击位置的横坐标
  double _globlePositionY = 0.0; //点击位置的纵坐标
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container(
              margin: EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
              height: 100,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onPanDown: (DragDownDetails details) {
                        _globlePositionX = details.globalPosition.dx;
                        _globlePositionY = details.globalPosition.dy;
                      },
                      onLongPress: (){
                        _showPromptBox();
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onPanDown: (DragDownDetails details) {
                        _globlePositionX = details.globalPosition.dx;
                        _globlePositionY = details.globalPosition.dy;
                      },
                      onLongPress: () {
                        _showPromptBox();
                      },
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
  ///显示长按出来的提示框
  void _showPromptBox() {
    bool isLeft = false; //是否点击的左侧的item
    bool isTop = false; //点击的位置是否在上半屏幕
    String imgStr = "";

    //确定点击位置在左侧还是右侧
    if (_globlePositionX > MediaQuery.of(context).size.width / 2) {
      isLeft = false;
    } else {
      isLeft = true;
    }
    //确定点击位置在上半屏幕还是下半屏幕
    if (_globlePositionY > MediaQuery.of(context).size.height / 2) {
      isTop = false;
    } else {
      isTop = true;
    }
    //根据位置判断显示哪一个带箭头的图片
    if (isTop == true && isLeft == true) {
      //左上
      imgStr = "assets/bgLeftTop.png";
    } else if (isTop == true && isLeft == false) {
      //右上
      imgStr = "assets/bgRightTop.png";
    } else if (isTop == false && isLeft == true) {
      //左下
      imgStr = "assets/bgLeftBottom.png";
    } else if (isTop == false && isLeft == false) {
      //右下
      imgStr = "assets/bgRightBottom.png";
    }
    showDialog(context: context, builder: (ctx){
      return Stack(
        children: <Widget>[
          Container(),
          Positioned(
            top: isTop ? _globlePositionY : _globlePositionY - 200,
            left: 30,
            right: 30,
            child: Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    imgStr,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    child: Container(),//放在提示框上的按钮
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}