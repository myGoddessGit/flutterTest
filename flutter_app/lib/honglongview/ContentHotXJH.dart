import 'package:flutter/material.dart';
import 'package:flutter_app/honglongview/HotXJHDetail.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
class ContentHotXJH extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentHotXJHState();
  }
}
class ContentHotXJHState extends State<ContentHotXJH> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        HotAll(left1: 13, left2: 187,title1: '热门宣讲会',title2: '查看全部'),
        HotXJHDetail(),
      ],
    );
  }
}
