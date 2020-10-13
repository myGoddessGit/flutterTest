import 'package:flutter/material.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
import 'package:flutter_app/honglongapi/CityData.dart';
class MineView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MineViewState();
  }
}
class MineViewState extends State<MineView> {
  //List<BSZTInfo> data = List();
  List<CollegeCollege> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullDatas();
  }
  void _pullDatas() async {
//    await HongLongApi.getBrand().then((BrandInfo list){
//      dataes.addAll(list.data);
//    });
//    await HongLongApi.getHotXJH().then((HotXJHInfo list){
//      data.addAll(list.data);
//    });
//    await HongLongApi.getHotXZ().then((HotXZInfo list){
//      datas.addAll(list.data);
//    });
//    await HongLongApi.getResumeMB().then((ResumeMBInfo list){
//      data.addAll(list.data);
//    });
//    await HongLongApi.getBSZT().then((BSZTData list){
//     data.addAll(list.info);
//    });
//    await HongLongApi.getCollege().then((CityData list){
//     data.addAll(list.college.college);
//    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF4285F4),
        automaticallyImplyLeading: false,
      title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 0),
          child: Text('我的海投', style: TextStyle(fontSize: 16 , color: Color(0xFFFFFFFF)),),
        ),
      ),
      body: Column(
        children: <Widget>[
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context).pushNamed('/numberView');
//              for (int i = 0; i < data.length; i++) {
//                print(data.length - i);
//              }
              //print(dataes.length);
              print(data.length);
              //print(datas.length);
            },
            child:Container(
              height: 115,
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    padding: EdgeInsets.only(left: 16, top: 0),
                    height: 80,
                    child: ClipOval(
                      child: Image.asset('assets/imagesTwo.jpg',height: 60, width: 60, fit: BoxFit.cover,),
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 10, top: 35),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 75,
                          child: Text('路明非',style: TextStyle(fontSize: 16, color: Color(0XFF3B3F4F)),),
                        ),
                        Container(
                          width: 75,
                          child: Text('卡塞尔学院', style: TextStyle(fontSize: 15, color: Color(0XFF89919B)),),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 146, top: 10),
                    height: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomLeft: Radius.circular(30)),
                      color: Color(0XFFF6F7F8),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('个人中心',style: TextStyle(fontSize: 11, color: Color(0XFF99A4BA)),),
                        ),
                        Container(
                          alignment: Alignment(-1.0, 0.0),
                          margin: EdgeInsets.only(top: 2),
                          child: Image.asset('assets/icon_profile_arrow.png',width: 8, height: 8,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          FGF(),
          _widget(null,'assets/icon_profile_my_favorite.png', '我的收藏', 225),
          _container,
          _widget(null,'assets/icon_profile_my_resume.png', '我的简历', 225),
          _container,
          _widget(null,'assets/icon_profile_resume_history.png', '简历投递记录', 195),
          _container,
          _widget(null,'assets/icon_profile_resume_invitation.png', '我的邀约', 224),
          FGF(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context).pushNamed('/settingView');
            },
            child: Container(
              height: 58,
              decoration: BoxDecoration(
                color: Colors.white70,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 15),
                    child: Image.asset('assets/icon_profile_setting.png',width: 17,height: 17,),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 12),
                    child: Text('设置', style: TextStyle(fontSize: 15, color: Color(0XFF3B3F4F)),),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 254),
                    child: Image.asset('assets/icon_profile_arrow.png',width: 12, height: 12,),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _widget(dynamic navigator, String image,String title,double left,){
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        navigator;
      },
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(left: 15),
              child: Image.asset(image,width: 17,height: 17,),
            ),
            Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(left: 12),
              child: Text(title, style: TextStyle(fontSize: 15, color: Color(0XFF3B3F4F)),),
            ),
            Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(left: left),
              child: Image.asset('assets/icon_profile_arrow.png',width: 12, height: 12,),
            ),
          ],
        ),
      ),
    );
  }
  Container _container = new Container (
    margin: EdgeInsets.only(left: 15,),
    alignment: Alignment(-1.0, 0.0),
    child: Divider(
      color: Color(0xFFEFF1F5),
      //color: Colors.blue,
      height: 0.5,
    ),
  );
}
