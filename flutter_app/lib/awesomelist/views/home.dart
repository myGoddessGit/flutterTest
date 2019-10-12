import 'package:flutter/material.dart';
import 'package:flutter_app/awesomelist/widgets/homeBody.dart';

class MyHomePage extends StatelessWidget{

  const MyHomePage({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
        Colors.transparent,
        elevation: 0,
        title: Text(
          'flutter awesome list',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: HomeBody(),
    );
  }
}