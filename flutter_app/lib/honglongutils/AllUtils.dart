import 'package:flutter/material.dart';

class HotAll extends StatefulWidget {
  final double left1;
  final double left2;
  final String title1;
  final String title2;
  HotAll({Key key, this.left1, this.left2, this.title1, this.title2}) : super(key :key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotAllState();
  }
}
class HotAllState extends State<HotAll> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _widget(widget.left1, widget.left2, widget.title1,widget.title2);
  }
  Widget _widget(double left1, double left2, String title1, String title2) {
    return Container(
      height: 50,
      width: 360,
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: left1),
            child: Text(title1,style: TextStyle(fontSize: 16, color: Color(0XFF333333),fontWeight: FontWeight.w700),),
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: left2),
            child: Text(title2,style: TextStyle(fontSize: 14, color: Color(0XFF8E8E93)),),
          ),
        ],
      ),
    );
  }
}
class FGF extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FGFState();
  }
}
class FGFState extends State<FGF>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 10,
      decoration: BoxDecoration(
        color: Color(0XFFF2F2F2),
      ),
    );
  }
}