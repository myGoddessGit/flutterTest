import 'package:flutter/material.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/ui/login_page.dart';
import 'package:flutter_app/ui/user_provider.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    User user = UserContainer
        .of(context)
        .user;
    if (user == null) {
      return LoginPage();
    } else {
      return Scaffold(
        appBar: AppBar(title: 
          Text("loginView")
          ,),
        body: Container(
          child: Center(
            child: Text(
                "用户已登录\n用户名:${user.username}\n密码:${user.password}"),
          ),
        ),
      );
    }
  }
}