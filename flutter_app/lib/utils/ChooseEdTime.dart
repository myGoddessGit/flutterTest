import 'package:flutter/material.dart';


class ChooseEdTime extends StatefulWidget {
  //int values;
  State<StatefulWidget> createState() => ChooseEdTimeState();
//  ChooseEdTime(int value){
//    this.values = value;
//  }
}

class ChooseEdTimeState extends State<ChooseEdTime> {
  String values = "2020年";
  String desOne = "毕业时间选择";
  String desTwo = "请选择您的毕业时间";
  List<String> time = ["2016年", "2017年", "2018年", "2019年", "2020年", "2021年", "2022年","2023年", "2024年", "2025年"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

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
                //Text(desOne,style: TextStyle(fontSize: 20, color: Color(0xFF363951))),
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
              padding: EdgeInsets.only(left: 0, top: 33),
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[0];
                    });
                    Navigator.of(context).pop(values);
                    //print(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[0]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[0], style: TextStyle(fontSize: 15, color: values == time[0] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[1];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[1] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[1], style: TextStyle(fontSize: 15, color:values == time[1] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[2];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[2]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[2], style: TextStyle(fontSize: 15, color:values == time[2]? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[3];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[3] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[3], style: TextStyle(fontSize: 15, color:values == time[3] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[4];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[4]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[4], style: TextStyle(fontSize: 15, color:values == time[4] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[5];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[5] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[5], style: TextStyle(fontSize: 15, color:values == time[5] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[6];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[6] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[6], style: TextStyle(fontSize: 15, color:values == time[6]? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[7];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[7]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[7], style: TextStyle(fontSize: 15, color:values == time[7]? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[8];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[8] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[8], style: TextStyle(fontSize: 15, color:values == time[8] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = time[9];
                    });
                    Navigator.of(context).pop(values);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == time[9]? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text(time[9], style: TextStyle(fontSize: 15, color:values == time[9] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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