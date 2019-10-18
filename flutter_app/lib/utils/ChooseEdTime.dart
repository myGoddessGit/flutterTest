import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseEdTime extends StatefulWidget {
  int values;
  State<StatefulWidget> createState() => ChooseEdTimeState();
  ChooseEdTime(int value){
    this.values = value;
  }
}

class ChooseEdTimeState extends State<ChooseEdTime> {
  int values = 0;
  String desOne = "毕业时间选择";
  String desTwo = "请选择您的毕业时间";

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
                      values = 1;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 1 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2016', style: TextStyle(fontSize: 15, color: values == 1 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 2;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 2 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2017', style: TextStyle(fontSize: 15, color:values == 2 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 3;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 3 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2018', style: TextStyle(fontSize: 15, color:values == 3 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 4;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 4 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2019', style: TextStyle(fontSize: 15, color:values == 4 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 5;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 5 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2020', style: TextStyle(fontSize: 15, color:values == 5 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 6;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 6 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2021', style: TextStyle(fontSize: 15, color:values == 6 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 7;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 7 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2022', style: TextStyle(fontSize: 15, color:values == 7 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 8;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 8 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2023', style: TextStyle(fontSize: 15, color:values == 8 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 9;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 9 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2024', style: TextStyle(fontSize: 15, color:values == 9 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                        ),
                      ],
                    ),
                  ),
                ),
                _container,
                GestureDetector(
                  onTap: () {
                    setState(() {
                      values = 10;
                    });
                    Navigator.pop(context);
                  },
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    margin: EdgeInsets.only(left: 0,top: 15),
                    alignment: Alignment(-1.0, 0.0),
                    width: 200,
                    child: Row(
                      children: <Widget>[
                        Image.asset(values == 10 ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                        Container(
                          margin: EdgeInsets.only(left: 12),
                          alignment: Alignment(-1.0, 0.0),
                          child: Text('2025', style: TextStyle(fontSize: 15, color:values == 10 ? Color(0xFF3388FF) : Color(0xFF363951) ),),
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