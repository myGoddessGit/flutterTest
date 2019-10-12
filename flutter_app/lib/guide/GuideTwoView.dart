import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class GuideTwoView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GuideTwoViewState();
  }
}
class GuideTwoViewState extends State<GuideTwoView>{
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
                   margin: EdgeInsets.only(left: 23 , top: 45),
                   child: Text("2 " , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                 ),
                 new Container(
                   margin: EdgeInsets.only(left: 2 , top: 45),
                   child: Text("/ 2" , style: TextStyle(color: Color(0xFF363951) , fontSize: 18),),
                 ),
                 new Container(
                   margin: EdgeInsets.only(left: 250 , top: 45),
                   child: Text("跳过" , style: TextStyle(color: Color(0xFF9596A4) , fontSize: 14),),
                 ),
               ],
             ),
             new Column(
               children: <Widget>[
                 new Container(
                   margin: EdgeInsets.only(top: 50),
                   alignment: Alignment(-1.0, 0),
                   padding: EdgeInsets.only(left: 23),
                   child: Text("Hi 介绍一下自己吧!" , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                 ),
                 new Container(
                   margin: EdgeInsets.only(top: 5),
                   alignment: Alignment(-1.0, 0),
                   padding: EdgeInsets.only(left: 23),
                   child: Text("学校信息能帮助Hr快速认知你" , style: TextStyle(color: Color(0xFFA4A5AD) , fontSize: 13),),
                 ),
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
                         ),
                       )
                     ],
                   ),
                 ),
                 new Container(
                   margin: EdgeInsets.only( top: 25),
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
                           width: 220,
                           child: TextField(
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
                         )
                       ],
                     )
                 ),
                 new Container(
                   margin: EdgeInsets.only( top: 25),
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
                           width: 220,
                           child: TextField(
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
                         )
                       ],
                     )
                 ),
                 new Container(
                   margin: EdgeInsets.only( top: 25),
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
                           width: 220,
                           child: TextField(
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
                           ),
                         )
                       ],
                     )
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
                             onPressed: () {},
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
       ),
    );
  }
}