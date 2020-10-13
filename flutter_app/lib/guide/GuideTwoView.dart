import 'package:flutter/material.dart';
import 'package:flutter_app/utils/ChooseEd.dart';
import 'package:flutter_app/utils/ChooseEdTime.dart';
import 'package:flutter_app/honglongapi/CityData.dart';
import 'package:flutter_app/utils/SharePreferenceUtil.dart';
import 'package:flutter_app/utils/ChooseMajor.dart';
import 'package:flutter_app/honglongutils/HttpUtil.dart';
import 'dart:convert';
class GuideTwoView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GuideTwoViewState();
  }
}

class GuideTwoViewState extends State<GuideTwoView>{
  //String values ;
  TextEditingController _time = TextEditingController();
  TextEditingController _education = TextEditingController();
  TextEditingController _major = TextEditingController();
  List<CollegeCollege> data = List();
  List<CollegeCollege> dataes = List();
  TextEditingController _schools = TextEditingController();
  FocusNode _focusNode = FocusNode();
  bool hide = false;
  dynamic val;
  var vars;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pullData();
    _init(val);
    getCount();
    getCountS();
  }
  void _pullData() async {
    var response = await HttpUtil().get("common/const?type=college");
    Map info = json.decode(response.toString());
    var a = CityData.fromJson(info);
    setState(() {
      data.addAll(a.college.college);
    });
  }
  void _init(value) {
    val = value;
    for (int index = 0; index < data.length; index++) {
      if (data[index].name != null && data[index].name.startsWith(value.toString()) && value != ""){
        dataes.add(data[index]);
      }
    }
  }
  void getCount() async {
    String account = await SharedPreferenceUtil.get(SharedPreferenceUtil.KEY_ACCOUNT);
    this._time.text = account;
  }
  void getCountS() async {
    String accounts = await SharedPreferenceUtil.get(SharedPreferenceUtil.KEY_ACCOUNTS);
    this._education.text = accounts;
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
               children: <Widget>[
                 new Row(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(left: 8,top: 44),
                       child: GestureDetector(
                         onTap: () {
                           Navigator.pop(context);
                         },
                         child: Image.asset('assets/ico_back_last_max.png',width: 22, height: 22,color: Colors.black87,),
                       ),
                     ),
                     new Container(
                       margin: EdgeInsets.only(left: 8 , top: 45),
                       child: Text("2 " , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                     ),
                     new Container(
                       margin: EdgeInsets.only(left: 2 , top: 45),
                       child: Text("/ 2" , style: TextStyle(color: Color(0xFF363951) , fontSize: 18),),
                     ),
                     new Container(
                         margin: EdgeInsets.only(left: 225 , top: 45),
                         child: Row(
                           children: <Widget>[
                             GestureDetector(
                               child: Text(
                                 '跳过', style: TextStyle(fontSize: 14, color: Color(0xFF9596A4)),
                               ),
                               onTap: (){
                                 Navigator.of(context).pushNamed('/mineView');
                               },
                             )
                           ],
                         )
                     ),
                   ],
                 ),
                 new Column(
                   children: <Widget>[
                     new Container(
                       margin: EdgeInsets.only(top: 50),
                       alignment: Alignment(-1.0, 0),
                       padding: EdgeInsets.only(left: 30),
                       child: Text("Hi 介绍一下自己吧!" , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                     ),
                     new Container(
                       margin: EdgeInsets.only(top: 5),
                       alignment: Alignment(-1.0, 0),
                       padding: EdgeInsets.only(left: 30),
                       child: Text("学校信息能帮助Hr快速认知你" , style: TextStyle(color: Color(0xFFA4A5AD) , fontSize: 13),),
                     ),
                   Stack(
                     children: <Widget>[
                       new Container(
                         margin: EdgeInsets.only(top: 50),
                         alignment: Alignment(-1.0, 0),
                         padding: EdgeInsets.only(left: 0),
                         height: 50,
                         width: 310,
                         //边框
                         decoration: new BoxDecoration(
                           //背景
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10.0)),
                             //设置四周边框
                             border: new Border.all(width: 1 , color: Colors.white),
                             boxShadow: [BoxShadow(
                                 color: Color(0xFFE9ECF1),
                                 offset: Offset(4.0, 4.0),
                                 blurRadius: 4.0
                             )]
                         ),
                         child: Row(
                           children: <Widget>[
                             Container(
                                 margin: EdgeInsets.only(left: 15),
                                 alignment: Alignment(-1.0, 0.0),
                                 child: Text('毕业学校' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                             ),
                             Container(
                               margin: EdgeInsets.only(left: 15),
                               alignment: Alignment(-1.0 , 0.0),
                               padding: EdgeInsets.only(left: 0),
                               height: 50,
                               width: 220,
                               child: TextField(
                                 controller: this._schools,
                                 focusNode: _focusNode,
                                 style : TextStyle(
                                   color: Color(0xFF363951) , fontSize: 14,
                                 ),
                                 decoration: InputDecoration(
                                   border: InputBorder.none,
                                   hintText: '请输入学校名称',
                                   hintStyle: TextStyle(
                                     color: Color(0xFFC2C4CC) , fontSize: 14,
                                   ),
                                 ),
                                 onChanged: (val){
                                   setState(() {
                                     dataes.clear();
                                     _init(val);
                                   });
                                 },
                               ),
                             ),
                           ],
                         ),
                       ),
                       new Container(
                           margin: EdgeInsets.only( top: 115),
                           alignment: Alignment(-1.0, 0),
                           padding: EdgeInsets.only(left: 0),
                           height: 50,
                           width: 310,
                           //边框
                           decoration: new BoxDecoration(
                             //背景
                               color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(10.0)),
                               //设置四周边框
                               border: new Border.all(width: 1 , color: Colors.white),
                               boxShadow: [BoxShadow(
                                   color: Color(0xFFE9ECF1),
                                   offset: Offset(4.0, 4.0),
                                   blurRadius: 4.0
                               )]
                           ),
                           child: Row(
                             children: <Widget>[
                               Container(
                                   margin: EdgeInsets.only(left: 15),
                                   alignment: Alignment(-1.0, 0.0),
                                   child: Text('专业类别' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                               ),
                               Container(
                                 margin: EdgeInsets.only(left: 15),
                                 alignment: Alignment(-1.0 , 0.0),
                                 padding: EdgeInsets.only(left: 0),
                                 height: 50,
                                 width: 180,
                                 child: TextField(
                                   enabled: false,
                                   controller: this._major,
                                   style : TextStyle(
                                     color: Color(0xFF363951) , fontSize: 14,
                                   ),
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: '请选择专业',
                                     hintStyle: TextStyle(
                                       color: Color(0xFFC2C4CC) , fontSize: 14,
                                     ),
                                   ),
                                 ),
                               ),
                               Container(
                                 alignment: Alignment(-1.0, 0.0),
                                 child: GestureDetector(
                                     behavior: HitTestBehavior.opaque,
                                     onTap: () {
                                       showModalBottomSheet(
                                         isScrollControlled: true,
                                           context: context,
                                           builder: (BuildContext context) {
                                             return Stack(
                                               children: <Widget>[
                                                 Container(
                                                   width: double.infinity,
                                                   color: Colors.black54,
                                                 ),
                                                 Container(
                                                   decoration: BoxDecoration(
                                                     color: Colors.white,
                                                     borderRadius: BorderRadius.only(
                                                       topLeft: Radius.circular(12),
                                                       topRight: Radius.circular(12),
                                                     ),
                                                   ),
                                                 ),
                                                 Container(
                                                   child: ChooseMajor(),
                                                 ),
                                               ],
                                             );
                                           }
                                       ).then((value){
                                          this._major.text = value;
                                       });
                                     },
                                     child: Container(
                                       margin: EdgeInsets.only(left: 0),
                                       alignment: Alignment(-1.0, 0.0),
                                       padding: EdgeInsets.only(left: 0),
                                       width: 40,
                                       height: 40,
                                       child: Image.asset('assets/ico_open_choose.png',width: 18,height: 18,),
                                     )
                                 ),
                               ),
                             ],
                           )
                       ),
                       new Container(
                           margin: EdgeInsets.only( top: 182),
                           alignment: Alignment(-1.0, 0),
                           padding: EdgeInsets.only(left: 0),
                           height: 50,
                           width: 310,
                           //边框
                           decoration: new BoxDecoration(
                             //背景
                               color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(10.0)),
                               //设置四周边框
                               border: new Border.all(width: 1 , color: Colors.white),
                               boxShadow: [BoxShadow(
                                   color: Color(0xFFE9ECF1),
                                   offset: Offset(4.0, 4.0),
                                   blurRadius: 4.0
                               )]
                           ),
                           child: Row(
                             children: <Widget>[
                               Container(
                                   margin: EdgeInsets.only(left: 15),
                                   alignment: Alignment(-1.0, 0.0),
                                   child: Text('最高学历' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                               ),
                               Container(
                                 margin: EdgeInsets.only(left: 15),
                                 alignment: Alignment(-1.0 , 0.0),
                                 padding: EdgeInsets.only(left: 0),
                                 height: 50,
                                 width: 180,
                                 child: TextField(
                                   controller: this._education,
                                   enabled: false,
                                   style : TextStyle(
                                     color: Color(0xFF363951) , fontSize: 14,
                                   ),
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: '请选择学历',
                                     hintStyle: TextStyle(
                                       color: Color(0xFFC2C4CC) , fontSize: 14,
                                     ),
                                   ),
                                 ),
                               ),
                               Container(
                                 alignment: Alignment(-1.0, 0.0),
                                 child: GestureDetector(
                                     behavior: HitTestBehavior.opaque,
                                     onTap: () {
                                       showModalBottomSheet(
                                           context: context,
                                           builder: (BuildContext context) {
                                             return Stack(
                                               children: <Widget>[
                                                 Container(
                                                   width: double.infinity,
                                                   color: Colors.black54,
                                                 ),
                                                 Container(
                                                   decoration: BoxDecoration(
                                                     color: Colors.white,
                                                     borderRadius: BorderRadius.only(
                                                       topLeft: Radius.circular(25),
                                                       topRight: Radius.circular(25),
                                                     ),
                                                   ),
                                                 ),
                                                 Container(
                                                   child: ChooseEd(),
                                                 ),
                                               ],
                                             );
                                           }
                                       ).then((value){
                                         this._education.text = value;
                                       });
                                     },
                                     child: Container(
                                       margin: EdgeInsets.only(left: 0),
                                       alignment: Alignment(-1.0, 0.0),
                                       padding: EdgeInsets.only(left: 0),
                                       width: 40,
                                       height: 40,
                                       child: Image.asset('assets/ico_open_choose.png',width: 18,height: 18,),
                                     )
                                 ),
                               ),
                             ],
                           )
                       ),
                       new Container(
                           margin: EdgeInsets.only( top: 250),
                           alignment: Alignment(-1.0, 0),
                           padding: EdgeInsets.only(left: 0),
                           height: 50,
                           width: 310,
                           //边框
                           decoration: new BoxDecoration(
                             //背景
                               color: Colors.white,
                               borderRadius: BorderRadius.all(Radius.circular(10.0)),
                               //设置四周边框
                               border: new Border.all(width: 1 , color: Colors.white),
                               boxShadow: [BoxShadow(
                                   color: Color(0xFFE9ECF1),
                                   offset: Offset(4.0, 4.0),
                                   blurRadius: 4.0
                               )]
                           ),
                           child: Row(
                             children: <Widget>[
                               Container(
                                   margin: EdgeInsets.only(left: 15),
                                   alignment: Alignment(-1.0, 0.0),
                                   child: Text('毕业时间' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                               ),
                               Container(
                                 margin: EdgeInsets.only(left: 15),
                                 alignment: Alignment(-1.0 , 0.0),
                                 padding: EdgeInsets.only(left: 0),
                                 height: 50,
                                 width: 180,
                                 child: TextField(
                                   controller: this._time,
                                   //enableInteractiveSelection: false,
                                   enabled: false,
                                   style : TextStyle(
                                     color: Color(0xFF363951) , fontSize: 14,
                                   ),
                                   decoration: InputDecoration(
                                     border: InputBorder.none,
                                     hintText: '请选择毕业时间',
                                     hintStyle: TextStyle(
                                       color: Color(0xFFC2C4CC) , fontSize: 14,
                                     ),
                                   ),
                                   onChanged: (value) {
                                   },
                                 ),
                               ),
                               Container(
                                 alignment: Alignment(-1.0, 0.0),
                                 child: GestureDetector(
                                   onTap: () {
                                     showModalBottomSheet(
                                         context: context,
                                         builder: (BuildContext context) {
                                           return Stack(
                                             children: <Widget>[
                                               Container(
                                                 height: 100.0,
                                                 width: double.infinity,
                                                 color: Colors.black54,
                                               ),
                                               Container(
                                                 decoration: BoxDecoration(
                                                   color: Colors.white,
                                                   borderRadius: BorderRadius.only(
                                                     topLeft: Radius.circular(25),
                                                     topRight: Radius.circular(25),
                                                   ),
                                                 ),
                                               ),
                                               Container(
                                                 child: ChooseEdTime(),
                                               ),
                                             ],
                                           );
                                         }
                                     ).then((value){
                                       this._time.text = value;
                                     });
                                   },
                                   child: Image.asset('assets/ico_open_choose.png',width: 18,height: 18,),
                                 ),
                               ),
                             ],
                           )
                       ),
                       Offstage(
                         offstage: hide || this._schools.text.isEmpty || val.toString().isEmpty || !_focusNode.hasFocus || this._schools.text == vars,
                         child: Container(
                           margin: EdgeInsets.only(top: 100),
                           width: 310,
                           height: dataes.length <= 5 ? dataes.length * 30.0 : 150,
                           decoration: BoxDecoration(
                             color: Color(0xffE7E7E7),
                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                           ),
                           child: ListView.builder(
                             //scrollDirection: Axis.vertical,
                             itemCount: dataes.length,
                             itemExtent: 30.0,
                             padding: EdgeInsets.only(top: 14,left: 8),
                             itemBuilder: (context, index){
                               hide = false ;
                               return _school(context, index);
                             },
                           ),
                         ),
                       ),
                     ],
                   ),
                     new Container(
                       child: Row(
                         children: <Widget>[
                           Expanded(
                             child: Container(
                               margin: EdgeInsets.only(left: 100 , right: 100 , top: 40),
                               height: 48,
                               child: RaisedButton(
                                 color: Colors.blue,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.all(Radius.circular(24.0)),
                                 ),
                                 child: Text('完成' , style: TextStyle(color: Colors.white , fontSize: 16),),
                                 onPressed: checkInput() == false ? null : checkGo,
                                 disabledColor: Color(0xFFF1F1F1),
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                   ],
                 ),
               ],
         )
       ),
    );
  }
  void checkGo(){
    Navigator.of(context).pushNamed('/citypick');
  }
  bool checkInput() {
    if (val.toString().isEmpty || this._major.text.isEmpty || this._education.text.isEmpty || this._time.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
  _school(context, index) {
    return GestureDetector(
      onTap: () {
        this._schools.text = dataes[index].name;
        vars = dataes[index].name;
        setState(() {
          hide = true ;
        });
      },
      child: Container(
        child: RichText(
          text: TextSpan(
            children: <TextSpan> [
              TextSpan(
                  text: dataes[index].name.substring(0,val.toString().length),
                  style: TextStyle(fontSize: 14,color: Color(0xff777eff))
              ),
              TextSpan(
                  text: dataes[index].name.substring(val.toString().length,dataes[index].name.length),
                  style: TextStyle(fontSize: 14, color: Color(0xff5D6773))
              )
            ],
          ),
        ),
      ),
    );
  }
}