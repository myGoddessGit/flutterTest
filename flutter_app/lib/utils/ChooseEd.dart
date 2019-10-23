import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseEd extends StatefulWidget {

  State<StatefulWidget> createState() => ChooseEdTimeState();

}

class ChooseEdTimeState extends State<ChooseEd> {
  String values ;
  String desOne = "学历选择";
  String desTwo = "请选择符合您的学历";
  List<String> education = ["博士", "研究生", "本科", "大专"];
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
                  margin: EdgeInsets.only(left: 200, top: 0),
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
          child:
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 0, top: 33),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    values = education[0];
                  });
                  Navigator.of(context).pop(values);
                },
                behavior: HitTestBehavior.opaque,
                child: Container(
                  margin: EdgeInsets.only(left: 0,),
                  alignment: Alignment(-1.0, 0.0),
                  width: 200,
                  child: Row(
                    children: <Widget>[
                      Image.asset(values == education[0] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(education[0], style: TextStyle(fontSize: 15, color: values == education[0] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                      ),
                    ],
                  ),
                ),
              ),
              _container,
              GestureDetector(
                onTap: () {
                  setState(() {
                    values = education[1];
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
                      Image.asset(values == education[1] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(education[1], style: TextStyle(fontSize: 15, color:values == education[1] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                      ),
                    ],
                  ),
                ),
              ),
              _container,
              GestureDetector(
                onTap: () {
                  setState(() {
                    values = education[2];
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
                      Image.asset(values == education[2] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(education[2], style: TextStyle(fontSize: 15, color:values == education[2] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
                      ),
                    ],
                  ),
                ),
              ),
              _container,
              GestureDetector(
                onTap: () {
                  setState(() {
                    values = education[3];
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
                      Image.asset(values == education[3] ? 'assets/ico_true.png' : "assets/ico_false.png",width: 18, height: 18,),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        alignment: Alignment(-1.0, 0.0),
                        child: Text(education[3], style: TextStyle(fontSize: 15, color:values == education[3] ? Color(0xFF3388FF) : Color(0xFF363951) ),),
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