import 'package:flutter/material.dart';

class PersonalNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PersonalNumberState();
  }
}
class PersonalNumberState extends State<PersonalNumber> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment(-1.0, 0.0),
          margin: EdgeInsets.only(left: 85),
          child: Text('个人账号', style: TextStyle(fontSize: 16 , color: Colors.white),),
        ),
        backgroundColor: Color(0XFF000000),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 215,
                decoration: BoxDecoration(
                  color: Color(0XFF000000),
                ),
                child: Container(
                  height: 150,
                  margin: EdgeInsets.only(left: 12 ,right: 12 ,top: 18 , bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 14 ,right: 12 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 0, top: 20),
                                  alignment: Alignment(-1.0, 0.0),
                                  width: 180,
                                  child: Text('路明非/男', style: TextStyle(fontSize: 15, ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0,),
                                  alignment: Alignment(-1.0, 0.0),
                                  width: 180,
                                  child: Text('卡塞尔学院/研究生/2020年', style: TextStyle(color: Color(0xFF333333)),),
                                )
                              ],
                            ),
                            Container(
                              alignment: Alignment(-1.0, 0.0),
                              padding: EdgeInsets.only(left: 75 , top: 16),
                              child: ClipOval(
                                child: Image.asset('assets/imagesTwo.jpg',height: 45, width: 45, fit: BoxFit.cover,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 14 ,right: 12, top: 10 ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 0, top: 5),
                                  alignment: Alignment(-1.0, 0.0),
                                  width: 180,
                                  child: Text('专业:  屠龙云计算', style: TextStyle(fontSize: 14, ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0, top: 5),
                                  alignment: Alignment(-1.0, 0.0),
                                  width: 180,
                                  child: Text('手机:  1101101100', style: TextStyle(fontSize: 14, ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 0, top: 5),
                                  alignment: Alignment(-1.0, 0.0),
                                  width: 180,
                                  child: Text('邮箱:  1101101100@qq.com', style: TextStyle(fontSize: 14, ),),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onTap: () {
                                  Navigator.of(context).pushNamed('/cardView');
                                },
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(left: 40, top: 53),
                                      child: Image.asset('assets/icon_resume_edit_info.png',width: 14, height: 14,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 3, top: 53),
                                      child: Text('编辑', style: TextStyle(fontSize: 15,color: Color(0XFF236FE3)),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 15),
            height: 50,
            width: 350,
            child: Text('账号管理',style: TextStyle(fontSize: 15),),
          ),
          _container,
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 15),
            height: 60,
            width: 350,
            child: Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 0),
                  child: Text('绑定手机', style: TextStyle(fontSize: 15, color: Color(0XFF333333)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 190, top: 3),
                  child: Text('1101101100',style: TextStyle(fontSize: 15, color: Color(0XFF333333)),),
                )
              ],
            ),
          ),
          _container,
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context).pushNamed('/updateView');
            },
            child: Container(
              alignment: Alignment(-1.0, 0.0),
              margin: EdgeInsets.only(left: 15),
              height: 60,
              width: 350,
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 0),
                    child: Text('修改密码', style: TextStyle(fontSize: 15, color: Color(0XFF333333)),),
                  ),
                  Container(
                    alignment: Alignment(-1.0, 0.0),
                    margin: EdgeInsets.only(left: 240, top: 3),
                    child: Image.asset('assets/icon_profile_arrow.png', width: 12, height: 12,)
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Container _container = new Container (
    padding: EdgeInsets.only(left: 0,),
    alignment: Alignment(-1.0, 0.0),
    child: Divider(
      color: Color(0xFFEFF1F5),
      height: 0.5,
    ),
  );
}