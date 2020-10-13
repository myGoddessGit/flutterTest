import 'package:flutter/material.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
import 'package:flutter_app/honglongapi/BSZTData.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app/honglongutils/HttpUtil.dart';
import 'dart:convert';
class BSZTContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BSZTContentState();
  }
}
class BSZTContentState extends State<BSZTContent> {
  List<BSZTInfo> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
  }
  void _pullData() async {
    var response = await HttpUtil().get("bszt/list");
    Map info = json.decode(response.toString());
    var a = BSZTData.fromJson(info);
    setState(() {
      data.addAll(a.info);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        HotAll(left1: 13, left2: 192, title1: '笔试真题', title2: '查看全部',),
        Container(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index){
              return _BSZT(data: data[index],);
            },
          ),
        ),
      ],
    );
  }
}
class _BSZT extends StatelessWidget {
  final BSZTInfo data;
  _BSZT({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 18),
      child: Column(
        children: <Widget>[
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffD9DDE5),width: 1),
              borderRadius: BorderRadius.all(Radius.circular(2.0)),
            ),
            child: CachedNetworkImage(
              imageUrl: data.logo,width: 80, height: 80,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 80,
            child: Center(
              child: Text(data.companyName, style: TextStyle(fontSize: 15),),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            width: 80,
            child: Center(
              child: Text(data.workName, style: TextStyle(fontSize: 12, color: Color(0xff89919B)),softWrap: true,overflow: TextOverflow.ellipsis,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 6),
            width: 61,
            height: 29,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff4285F4),width: 1),
              borderRadius: BorderRadius.all(Radius.circular(1.5)),
            ),
            child: Center(
              child: Text('刷真题',style: TextStyle(fontSize: 14, color: Color(0xff4285F4)),),
            ),
          )
        ],
      ),
    );
  }
}