import 'package:flutter/material.dart';

class TopSelect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TopSelectState();
  }
}
class TopSelectState extends State<TopSelect> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 32,
            width: 285,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
              color: Color(0XFF256BEA),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 10),
                  child: Image.asset('assets/icon_top_bar_search.png',width: 10,height: 10,),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 8),
                  child: Text('搜索职位名／公司名／行业类别', style: TextStyle(fontSize: 14 ,color: Color(0X66ffffff)),),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed('/JLQView');
            },
            child: Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(left: 18),
              child: Image.asset('assets/icon_top_bar_chat.png',width: 20, height: 20,),
            ),
          ),
        ],
      ),
    );
  }
}