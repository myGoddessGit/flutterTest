import 'package:flutter/material.dart';
import 'package:flutter_app/awesomelist/widgets/homeBodyTop.dart';
import 'package:flutter_app/awesomelist/widgets/homeBodyList.dart';

class HomeBody extends StatelessWidget{
  const HomeBody({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
         HomeBodyList(),
         HomeBodyTop(),
      ],
    );
  }
}