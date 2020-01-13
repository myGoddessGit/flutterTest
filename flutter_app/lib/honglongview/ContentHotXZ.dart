import 'package:flutter/material.dart';
import 'HotXZDetail.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
class ContentHotXZ extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContentHotXZState();
  }
}
class ContentHotXZState extends State<ContentHotXZ> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        HotAll(left1: 13, left2: 172, title1: '热门校招网申',title2: '查看全部'),
        HotXZDetail(),
      ],
    );
  }
}