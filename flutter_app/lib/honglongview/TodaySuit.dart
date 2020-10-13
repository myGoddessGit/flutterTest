import 'package:flutter/material.dart';
import 'package:flutter_app/honglongapi/Brandbean.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app/honglongutils/HttpUtil.dart';
import 'dart:convert';

class TodaySuit extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TodaySuitState();
  }
}
class TodaySuitState extends State<TodaySuit> {
  List<BrandBean> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
  }
  void _pullData() async {
    var response = await HttpUtil().get("xyzp/brand-list");
    Map info = json.decode(response.toString());
    var dataes = BrandInfo.fromJson(info);
    setState(() {
      data.addAll(dataes.data);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: _renderRow,
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 0),
    );
  }

  Widget _renderRow(BuildContext context, int index) {
    return _ImageUrl(data: data[index]);
  }
}
class _ImageUrl extends StatelessWidget {
  final BrandBean data;
  _ImageUrl ({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 80,
      child: Column(
        children: <Widget>[
          Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
              border: Border.all(color: Color(0x50FFFFff),width: 2),
              //boxShadow: [BoxShadow(color: Color(0x99FFFFff), offset: Offset(5.0, 5.0),    blurRadius: 10.0, spreadRadius: 2.0), BoxShadow(color: Color(0x99ffFFff), offset: Offset(1.0, 1.0)), BoxShadow(color: Color(0xFFffffFF))],
            ),
            child: CachedNetworkImage(
              width: 45,
              height: 45,
              imageUrl: data.logoUrl,
            ),
          ),
          Container(
            child: Text(data.brandName,style: TextStyle(fontSize: 14 ,color: Color(0Xffffffff)),maxLines: 1,),
          ),
          Container(
            child: Text(data.activeTime.substring(5,10),style: TextStyle(fontSize: 14 ,color: Color(0Xffffffff)),),
          )
        ],
      ),
    );
  }
}