import 'package:flutter/material.dart';

class JLQView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return JLQViewState();
  }
}

class JLQViewState extends State<JLQView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF4285F4),
        automaticallyImplyLeading: false,
        title: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: 0),
          child: Text('交流群', style: TextStyle(fontSize: 16 , color: Color(0xFFFFFFFF)),),
        ),
      ),

    );
  }
}