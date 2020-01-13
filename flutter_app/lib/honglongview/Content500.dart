import 'package:flutter/material.dart';
import 'package:flutter_app/honglongutils/AllUtils.dart';
class Content500 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Content500State();
  }
}
class Content500State extends State<Content500> {
  static String tips = "500强";
   List<String> centerTit = ["互联网" + "$tips", "通信电子" + "$tips", "贸易零售" + "$tips", "教育培训" + "$tips" ,
   "金融" + "$tips", "房地产" + "$tips", "医疗制药" + "$tips", "能源矿产" + "$tips", "交通物流" + "$tips",
   "制造业" + "$tips", "服务业" + "$tips", "广告媒体" + "$tips", "公共事业" + "$tips"];
   List<String> bottomTit = ["IT/互联网", "计算机/通信/电子", "贸易/消费/零售", "教育/培训/专业服务", "金融/证券/银行", "房地产/建筑/物业",
   "医疗/制药/器械", "能源/矿产", "交通/运输/物流/仓储", "加工制造/设备仪表", "酒店/旅游/餐饮/娱乐", "广告/出版/印刷传媒", "政府/非盈利机构/其他"];
   List<String> image = ['assets/icon_xyzp_brand_internet.png','assets/icon_xyzp_brand_computer.png','assets/icon_xyzp_brand_retail.png',
   'assets/icon_xyzp_brand_education.png','assets/icon_xyzp_brand_financial.png','assets/icon_xyzp_brand_estate.png','assets/icon_xyzp_brand_medicine.png',
   'assets/icon_xyzp_brand_energy.png','assets/icon_xyzp_brand_logistics.png','assets/icon_xyzp_brand_manufacturing.png','assets/icon_xyzp_brand_service.png',
   'assets/icon_xyzp_brand_media.png','assets/icon_xyzp_brand_state.png'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
          HotAll(left1: 13,left2: 187,title1: '500强网申',title2: '查看全部',),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      _widget(centerTit[0], bottomTit[0], image[0]),
                      _widget(centerTit[1], bottomTit[1], image[1]),
                    ],
                  ),
                  SizedBox(
                  width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[2], bottomTit[2], image[2]),
                      _widget(centerTit[3], bottomTit[3], image[3]),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[4], bottomTit[4], image[4]),
                      _widget(centerTit[5], bottomTit[5], image[5]),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[6], bottomTit[6], image[6]),
                      _widget(centerTit[7], bottomTit[7], image[7]),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[8], bottomTit[8], image[8]),
                      _widget(centerTit[9], bottomTit[9], image[9]),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[10], bottomTit[10], image[10]),
                      _widget(centerTit[11], bottomTit[11], image[11]),
                    ],
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      _widget(centerTit[12], bottomTit[12], image[12]),
                      Container(
                        height: 153,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  Widget _widget(String centerTit, String bottomTit, String image) {
    return Container(
      margin: EdgeInsets.only(top: 12,left: 10),
      child: Column(
        children: <Widget>[
          Container(
            width: 165,
            child: Container(
              width: 165,
              height: 112,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  color: Color(0xaa0A0E13),
                ),
                child: Center(
                  child: Text(centerTit,style: TextStyle(color: Color(0xffffffff,),fontSize: 16),),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            width: 165,
            child: Text(bottomTit,style: TextStyle(color: Color(0xff333333)),),
          ),
        ],
      ),
    );
  }
}