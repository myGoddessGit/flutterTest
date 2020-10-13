import 'package:flutter/material.dart';
import 'package:flutter_app/honglongapi/HotXJHbean.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app/honglongutils/HttpUtil.dart';
import 'dart:convert';
class HotXJHDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HotXJHDetailState();
  }
}

class HotXJHDetailState extends State<HotXJHDetail> {
  List<HotXJHbean> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
  }
  void _pullData() async {
    var response = await HttpUtil().get("xjh/list");
    Map info = json.decode(response.toString());
    var a =  HotXJHInfo.fromJson(info);
    setState(() {
      data.addAll(a.data);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return GestureDetector(
        onTap: (){
        },
        child: Container(
          height: 260,
          child:
          GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 0.198
              ),
              itemBuilder: (context, index){
                return _ImageUrls(index, context);
              }
          ),
        ),
      );
  }
 // ignore: non_constant_identifier_names
 _ImageUrls(index, context) {
    var datas = data[index];
    return Container(
      alignment: Alignment(-1.0, 0.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              border: Border.all(color: Color(0xffe3e3e3),width: 1),
            ),
            child: CachedNetworkImage(
              imageUrl: datas.logoUrl,width: 50,
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                _container,
                Row(
                  children: <Widget>[
                    Container(
                      alignment: Alignment(-1.0, 0.0),
                      margin: EdgeInsets.only(left: 10,top: 6),
                      child: Text("${index + 1}",style: TextStyle(fontSize: 18),),
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.only(left: 15, top: 12),
                            width: 200,
                            child: Text(datas.company,style: TextStyle(fontSize: 15, color: Color(0xff333333)),softWrap: true,overflow: TextOverflow.ellipsis,),
                          ),
                          Container(
                            alignment: Alignment(-1.0, 0.0),
                            margin: EdgeInsets.only(left: 15),
                            width: 200,
                            child: Text(datas.holdtime.substring(5,10) + " "+ datas.holdtime.substring(11,16) + " " + (datas.universityShortName?? ""),style: TextStyle(fontSize: 12,color: Color(0xff8E8E93)),),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  Container _container = new Container (
    margin: EdgeInsets.only(left: 0,),
    alignment: Alignment(-1.0, 0.0),
    width: 220,
    child: Divider(
      color: Color(0xFFEFF1F5),
      //color: Colors.blue,
      height: 0.5,
    ),
  );
}

