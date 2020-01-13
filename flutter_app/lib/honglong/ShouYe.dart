import 'package:flutter/material.dart';
import 'package:flutter_app/honglongapi/Brandbean.dart';
import 'package:flutter_app/honglongutils/TopSelect.dart';
import 'package:flutter_app/honglongview/TodaySuit.dart';
import 'package:flutter_app/honglongview/CenterContent.dart';
import 'package:flutter_app/honglongview/ContentHotXJH.dart';
import 'package:flutter_app/honglongview/ContentHotXZ.dart';
import 'package:flutter_app/honglongview/Content500.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
import 'package:flutter_app/honglongview/SuperResume.dart';
import 'package:flutter_app/honglongview/BSZTContent.dart';
class ShouYe extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ShouYeState();
  }
}
class ShouYeState extends State<ShouYe> {
  List<BrandBean> data = List();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF4285F4),
        title: TopSelect(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color(0XFF4285F4),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    height: 90,
                    child: TodaySuit(),
                  ),
                  Container(
                    height: 50,
                    width: 195,
                    child: Image.asset('assets/icon_home_top.png',),
                  ),
                ],
              ),
            ),
            CenterContent(),
            FGF(),
            ContentHotXJH(),
            FGF(),
            ContentHotXZ(),
            FGF(),
            Content500(),
            FGF(),
            SuperResume(),
            FGF(),
            BSZTContent(),
          ],
        ),
      )
    );
  }
}

