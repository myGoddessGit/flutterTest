import 'package:flutter/material.dart';

class SexSelected extends StatefulWidget{

  final Function selectCallback;

  SexSelected({
    this.selectCallback,
  });
  @override
  _SexSelectedState createState() => _SexSelectedState();
}

class _SexSelectedState extends State<SexSelected>{
  ///默认选男，1表示男 ， 2表示女
  int _sexSelectController = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       GestureDetector(
         onTap: (){
           //选择男性时返回1并更新组件
           setState(() {
             _sexSelectController = 1;
             widget.selectCallback(_sexSelectController);
           });
         },
         child: Column(
           children: <Widget>[
             Image.asset(
               _sexSelectController == 1
                   ? 'assets/ico_true.png' : 'assets/ico_false.png',
               fit: BoxFit.contain,
               height: 90,
               width: 90,
             ),
             Text(
               '男',
               style: TextStyle(
                 fontSize: 16.0,
                 color: _sexSelectController == 1
                   ? Color(0xFF25C6CA) : Color(0xFF4A4A4A),
               ),
             ),
           ],
         ),
       ),
        SizedBox(
          width: 36.0,
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _sexSelectController = 2;
              widget.selectCallback(_sexSelectController);
            });
          },
          child: Column(
            children: <Widget>[
              Image.asset(
                _sexSelectController == 2
                    ? 'assets/ico_true.png' : 'assets/ico_false.png',
                fit: BoxFit.contain,
                height: 90.0,
                width: 90.0,
              ),
              Text(
                '女' ,
                style: TextStyle(
                  fontSize: 16.0,
                  color: _sexSelectController == 2
                    ? Color(0xFFFF6B47) : Color(0xFF4A4A4A),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

