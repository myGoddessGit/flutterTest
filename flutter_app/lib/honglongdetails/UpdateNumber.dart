import 'package:flutter/material.dart';

class UpdateNumber extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UpdateNumberState();
  }
}

class UpdateNumberState extends State<UpdateNumber> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:Image.asset('assets/ico_back_last_max.png',width: 22, height: 22,color: Colors.black87,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          alignment: Alignment(-1.0, 0.0),
          margin: EdgeInsets.only(left: 85),
          child: Text('修改密码', style: TextStyle(fontSize: 16 , color: Color(0xff333333)),),
        ),
        backgroundColor: Color(0XFFFFFFFF),
      ),
    );
  }
}