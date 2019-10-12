import 'package:flutter/material.dart';
/*
* 左边带标签提示的组合输入框控件
*/
class ItemTextField extends StatefulWidget {
  final String text;
  final String hint;
  final FocusNode focusNode;
  final TextEditingController controler;

  ItemTextField({this.text, this.hint, this.focusNode, this.controler});

  @override
  State createState() {
    return _ItemTextFieldState(
        this.text, this.hint, this.focusNode, this.controler);
  }
}

class _ItemTextFieldState extends State<ItemTextField> {
  final String text;
  final String hint;
  final FocusNode focusNode;
  final TextEditingController controler;

  _ItemTextFieldState(this.text, this.hint, this.focusNode, this.controler);

  @override
  Widget build(BuildContext context) {
    Widget _sectionPwd = Container(
        child: TextFormField(
          autofocus: false,
          focusNode: focusNode,
          controller: controler,
          decoration: InputDecoration(
//        labelText: text ?? "",
            hintText: hint ?? "",
            border: InputBorder.none,
          ),
          //校验用户名
          validator: (v) {
            return v.trim().length > 0 ? null : hint;
          },
        ));

    return Container(
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15, right: 10),
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: _sectionPwd,
          ),
        ],
      ),
    );
  }
}
