import 'package:flutter/material.dart';
import 'package:flutter_app/utils/SharePreferenceUtil.dart';
class ChooseEdTime extends StatefulWidget {
  State<StatefulWidget> createState() => ChooseEdTimeState();
}
class ChooseEdTimeState extends State<ChooseEdTime> {
  String values = count;
  static var count;
  String desOne = "毕业时间选择";
  String desTwo = "请选择您的毕业时间";
  List<String> time = ["2016年", "2017年", "2018年", "2019年", "2020年", "2021年", "2022年","2023年", "2024年", "2025年"];
  int index;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    save();
    getCount();
  }
  void getCount() async {
    String account = await SharedPreferenceUtil.get(SharedPreferenceUtil.KEY_ACCOUNT);
    count = account;
  }
  void save() async{
    await SharedPreferenceUtil.save(SharedPreferenceUtil.KEY_ACCOUNT , values);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 38, top: 30),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 0, top: 0),
                alignment: Alignment(-1.0, 0.0),
                child: Text(desOne,style: TextStyle(fontSize: 20, color: Color(0xFF363951))),
              ),
              Container(
                  margin: EdgeInsets.only(left: 150, top: 0),
                  alignment: Alignment(-1.0, 0.0),
                  child: GestureDetector (
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/ico_close.png',width: 15, height: 15,),
                  )
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 0, top: 0),
            alignment: Alignment(-1.0, 0.0),
            child: Text(desTwo,style: TextStyle(fontSize: 12, color: Color(0xFFA4A5AD)),),
          ),
          Container(
            padding: EdgeInsets.only(left: 0, right: 38),
            height: 280,
            child:
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.only(left: 0, top: 18),
              children: List.generate(time.length, (index){
                return Column(
                  children: <Widget>[
                  GestureDetector(
                  onTap: () {
                    values = time[index];
                    Navigator.of(context).pop(values);
                    save();
                    getCount();
                    //return values;
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[index]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[index], style: TextStyle(fontSize: 15, color: values == time[index] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                Offstage(
                   offstage: index == time.length - 1,
                   child: _container,
                   ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
  Container _container = new Container (
    margin: EdgeInsets.only(top: 15,),
    alignment: Alignment.center,
    child: Divider(
      color: Color(0xFFEFF1F5),
      height: 0.5,
    ),
  );
}