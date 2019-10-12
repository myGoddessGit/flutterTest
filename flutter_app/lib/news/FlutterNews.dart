import 'package:flutter/material.dart';
import 'package:flutter_app/news/constants/Constants.dart';

import 'events/ThemeEvent.dart';
import 'pages/HomePage.dart';

class FlutterNews extends StatefulWidget {
  @override
  _FlutterNewsState createState() => _FlutterNewsState();
}

class _FlutterNewsState extends State<FlutterNews>{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Constants.eventBus.on<ThemeEvent>().listen((event) {
      setState(() {
        Constants.currentTheme = event.themeModel;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var theme = Constants.currentTheme == Constants.dayTheme
        ? ThemeData(
            brightness: Brightness.light,
            primaryColor:  Colors.blue,
            accentColor: Colors.orangeAccent)
        : ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.cyan);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomePage(),
    );
  }
}