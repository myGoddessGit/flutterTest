import 'package:flutter/material.dart';
import 'package:flutter_app/honglongutils/TopSelect.dart';
class XJView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return XJViewState();
  }
}

class XJViewState extends State<XJView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0XFF4285F4),
        title: TopSelect(),
      ),
    );
  }
}