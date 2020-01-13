import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class CenterContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CenterContentState();
  }
}

class CenterContentState extends State<CenterContent> {
  var listContainer = List();
  var jobExp = List();
  List<String> centerThreeImage = ['assets/icon_home_menu_xjh.png','assets/icon_home_menu_xz.png','assets/icon_home_menu_sxzp.png'];
  List<String> centerThreeTitle = ["宣讲会","校园网申","实习招聘"];
  static List<String> jobExpes = ["好好学习,天天向上", "啦啦啦，德玛西亚，哈哈哈，诺克萨斯","没什么能把俺击退，啦啦啦，啦啦啦","天之炽之女武神，龙族5啦啦啦啦啦"];
  static List<String> titles = ["云宣讲", "500强网申", "简历超人", "求职经验", "笔试真题", "职业测评", "个人简历", "曝光台"];
  static List<String> descriptions = ["宣讲会现场直播", "名企招聘专题", "word简历下载", "笔试面试攻略", "名企笔试真题", "国际心理学测试", "完善后一键投递", "虚假信息封杀"];
  static List<String> images = ['assets/icon_home_menu_live.png', 'assets/icon_home_menu_brand.png', 'assets/icon_home_menu_super_resume.png','assets/icon_home_menu_job_exp.png',
    'assets/icon_home_menu_bszt.png', 'assets/icon_home_menu_zycp.png', 'assets/icon_home_menu_my_resume.png','assets/icon_home_menu_bgt.png', 'assets/icon_home_job_experience.png'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listContainer.add(_onePage);
    listContainer.add(_twoPage);
    jobExp.add(_oneExp);
    jobExp.add(_twoExp);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          height: 100,
          child: Row(
            children: List.generate(centerThreeImage.length, (index){
              return _centerThree(centerThreeImage[index], centerThreeTitle[index], index == 0 ? 20 : 0);
            }),
//            children: <Widget>[
//              _centerThree(centerThreeImage[0], centerThreeTitle[0],20),
//              _centerThree(centerThreeImage[1], centerThreeTitle[1],0),
//              _centerThree(centerThreeImage[2], centerThreeTitle[2],0),
//            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 8),
          width: 360,
          height: 210,
          child: Swiper(
            itemWidth: 350,
            itemCount: listContainer.length,
            itemBuilder: _swiperBuilder,
            scrollDirection: Axis.horizontal,
            autoplay: false,
            loop: false,
            pagination: new SwiperPagination(
              margin: EdgeInsets.only(top: 8),
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  activeColor: Colors.blue,
                  size: 5.0,
                  space: 1.2
                )
            ),
          )
        ),
        Container(
          margin: EdgeInsets.only(left: 13,top: 0),
          width: 360,
          height: 60,
          child: Row(
            children: <Widget>[
              Container(
                height: 37,
                width: 37,
                child: Image.asset(images[8]),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 12),
                height: 60,
                width: 260,
                child: Swiper(
                  itemHeight: 55,
                  itemCount: jobExp.length,
                  itemBuilder: _jobExpBuilder,
                  controller: SwiperController(),
                  scrollDirection: Axis.vertical,
                  autoplay: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _swiperBuilder(BuildContext context, int index) {
    return (listContainer[index]);
  }
  Widget _jobExpBuilder(BuildContext context, int index) {
    return (jobExp[index]);
  }
  Widget _centerThree(String image, String title, double left){
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(top: 22, left: left),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                width: 105,
                child: Image.asset(image,width: 42, height: 42,),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 5),
                width: 50,
                child: Text(title,style: TextStyle(fontSize: 12,color: Color(0XFF333333)),),
              ),
            ],
          ),
        ),
      ),
    );
  }
  static Widget _contentDetail(String title, String description, String image, double left){
    return  Container(
      width: 170,
      height: 60,
      margin: EdgeInsets.only(left: left),
      decoration: BoxDecoration(
        color: Color(0X33E3E7EC),
      ),
      child: Row(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  width: 90,
                  margin: EdgeInsets.only(left: 6, top: 10),
                  child: Text(title,style: TextStyle(fontSize: 15, color: Color(0XFF333333)),),
                ),
                Container(
                  width: 90,
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 6, top: 2),
                  child: Text(description,style: TextStyle(fontSize: 12,color: Color(0XFFA8ACB2)),),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: 40,
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only(left: 30,),
            child: Image.asset(image,height: 30, width: 30,),
          ),
        ],
      ),
    );
  }
  Container _onePage = Container(
    width: 360,
    height: 210,
    child: Column(
      children: List.generate(3, (index){
        return Container(
          margin: EdgeInsets.only(top: index > 0 ? 6 : 0),
          child: Row(
            children: List.generate(2, (index1){
              return _contentDetail(titles[index == 0 ? index1 : (index == 1 ? index1 + 2 : (index == 2 ? index1 + 4 : 0))],
                  descriptions[index == 0 ? index1 : (index == 1 ? index1 + 2 : (index == 2 ? index1 + 4 : 0))],
                  images[index == 0 ? index1 : (index == 1 ? index1 + 2 : (index == 2 ? index1 + 4 : 0))],
                  index1 % 2 == 0 ? 0 : 5);
            }),
          ),
        );
      }),
    ),
  );
  Container _twoPage = Container(
    width: 360,
    height: 210,
    child: Column(
      children: List.generate(1, (index){
        return Container(
          child: Row(
            children: List.generate(2, (value){
              return _contentDetail(titles[value + 6], descriptions[value + 6], images[value + 6], value % 2 == 0 ? 0 : 5);
            }),
          ),
        );
      },),
    ),
  );
  Container _oneExp = Container(
    width: 240,
    height: 45,
    child: Column(
      children: <Widget>[
        Container(
          width: 230,
          child: Text(jobExpes[0]),
        ),
        Container(
          width: 230,
          child: Text(jobExpes[1],overflow: TextOverflow.ellipsis,),
        ),
      ],
    ),
  );
  Container _twoExp = Container(
    width: 240,
    height: 45,
    child: Column(
      children: <Widget>[
        Container(
        width: 230,
          child: Text(jobExpes[2]),
        ),
        Container(
          width: 230,
          child: Text(jobExpes[3],),
        ),
      ],
    ),
  );
}