import 'package:flutter/material.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
import 'package:flutter_app/honglongapi/ResumeMBbean.dart';
import 'package:flutter_app/honglongapi/HongLongApi.dart';
import 'package:cached_network_image/cached_network_image.dart';
class SuperResume extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SuperResumeState();
  }
}
class SuperResumeState extends State<SuperResume> {
  List<ResumeMBbean> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
  }
  void _pullData() async {
    await HongLongApi.getResumeMB().then((ResumeMBInfo list){
      data.addAll(list.data);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        HotAll(left1: 13, left2: 192, title1: '简历超人', title2: '查看全部',),
        Container(
          height: 310,
          child: ListView.builder(
          //shrinkWrap: true,
          padding: EdgeInsets.only(left: 0),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index){
            return _resumeMB(data: data[index]);
          },
        ),
        )
      ],
    );
  }
}
class _resumeMB extends StatelessWidget {
  final ResumeMBbean data;
  _resumeMB({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(1.0)),
              border: Border.all(color: Colors.grey,width: 4.0),
            ),
            width: 162,
            child: CachedNetworkImage(
              imageUrl: data.pathUrl,width: 162,height: 250,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: 162,
            child: Text(data.title,style: TextStyle(fontSize: 14, color: Color(0xff333333)),),
          ),
          Container(
            width: 162,
            child: Text('¥9.98 拿走', style: TextStyle(fontSize: 14, color: Colors.redAccent),),
          )
        ],
      ),
    );
  }
}