import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FindPassView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindPassViewState();
  }
}
class FindPassViewState extends State<FindPassView> {
  TextEditingController _phone = TextEditingController();
  TextEditingController _pwd = TextEditingController();
  TextEditingController _code = TextEditingController();
  String values_phone = "";
  String values_pwd = "";
  bool pwd_hide = false;
  void _aActiveChanged() {
    setState(() {
      if (pwd_hide) {
        pwd_hide = false;
      } else {
        pwd_hide = true;
      }
    });
  }
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
          margin: EdgeInsets.only(left: 82),
          child: Text('找回密码', style: TextStyle(fontSize: 16 , color: Color(0xff333333),fontWeight: FontWeight.normal),),
        ),
        backgroundColor: Color(0XFFFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50,left: 35),
              alignment: Alignment(-1.0, 0),
              padding: EdgeInsets.only(left: 0),
              height: 50,
              width: 290,
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
                      child: Image.asset('assets/ico_login_phone_blue.png',height: 22,)
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment(-1.0 , 0.0),
                    padding: EdgeInsets.only(left: 0),
                    height: 50,
                    width: 200,
                    child: TextField(
                      inputFormatters: <TextInputFormatter>[
                        LengthLimitingTextInputFormatter(11)
                      ],
                      keyboardType: TextInputType.phone,
                      style : TextStyle(
                        color: Color(0xFF363951) , fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '请输入手机号',
                        hintStyle: TextStyle(
                          color: Color(0xFFC2C4CC) , fontSize: 14,
                        ),
                      ),
                      controller: this._phone,
                      onChanged: (value) {
                        this.setState((){
                          values_phone = value;
                        });
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 15),
                      alignment: Alignment(-1.0, 0.0),
                      padding: EdgeInsets.only(left: 0),
                      child: GestureDetector(
                        onTap: () {
                          this._phone.text ="";
                          setState(() {
                            values_phone = "";
                          });
                        },
                        child: Offstage(
                          offstage: (this._phone.text).isEmpty,
                          child: Image.asset('assets/ico_edit_clear.png',width: 15, height: 15,),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 35),
              alignment: Alignment(-1.0, 0),
              padding: EdgeInsets.only(left: 0),
              height: 50,
              width: 290,
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
                      child: Image.asset('assets/ico_login_code_blue.png',height: 22,)
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment(-1.0 , 0.0),
                    padding: EdgeInsets.only(left: 0),
                    height: 50,
                    width: 150,
                    child: TextField(
                      style : TextStyle(
                        color: Color(0xFF363951) , fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '请输入验证码',
                        hintStyle: TextStyle(
                          color: Color(0xFFC2C4CC) , fontSize: 14,
                        ),
                      ),
                      controller: this._code,
                      onChanged: (value) {
                        this.setState((){
                          //values_code = value;
                        });
                      },
                    ),
                  ),
                  Container(
                    height: 27,
                    width: 70,
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      color: this._phone.text.length == 11 ?  Color(0xffF1F7FF) : Color(0xffF1F2F3) ,
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Center(
                      child: Text('获取验证码',style: TextStyle(color: this._phone.text.length == 11 ? Color(0xff3388ff) : Color(0xffBABDC3) ,fontSize: 10),),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30,left: 35),
              alignment: Alignment(-1.0, 0),
              padding: EdgeInsets.only(left: 0),
              height: 50,
              width: 290,
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
                      child: Image.asset('assets/ico_login_pwd_blue.png',height: 22,)
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    alignment: Alignment(-1.0 , 0.0),
                    padding: EdgeInsets.only(left: 0),
                    height: 50,
                    width: 180,
                    child: TextField(
                      obscureText: !pwd_hide,
                      style : TextStyle(
                        color: Color(0xFF363951) , fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '请输入密码',
                        hintStyle: TextStyle(
                          color: Color(0xFFC2C4CC) , fontSize: 14,
                        ),
                      ),
                      controller: this._pwd,
                      onChanged: (value) {
                        this.setState((){
                          values_pwd = value;
                        });
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 0),
                      alignment: Alignment(-1.0, 0.0),
                      padding: EdgeInsets.only(left: 0),
                      child: GestureDetector(
                        onTap: () {
                          this._pwd.text ="";
                          setState(() {
                            values_pwd = "";
                          });
                        },
                        child: Offstage(
                          offstage: (this._pwd.text).isEmpty,
                          child: Image.asset('assets/ico_edit_clear.png',width: 15, height: 15,),
                        ),
                      )
                  ),
                  GestureDetector(
                    onTap: _aActiveChanged,
                    child: Container(
                      width: 20,
                      margin: EdgeInsets.only(left: 8),
                      child: !pwd_hide ? Image.asset('assets/ico_show_pass.png',width: 20,) : Image.asset('assets/icon_hide_pass.png',width: 20,),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 170,
              height: 44,
              margin: EdgeInsets.only(top: 180,left: 34),
              decoration: BoxDecoration(
                  color: (this._phone.text.isNotEmpty && this._code.text.isNotEmpty && this._pwd.text.isNotEmpty) ?  Color(0xff3388ff) : Color(0xffF1F1F1),
                  borderRadius: BorderRadius.all(Radius.circular(22.0))
              ),
              child: Center(
                child: Text('完成',style: TextStyle(fontSize: 16, color: Colors.white),),
              ),
            ),
            Container(
              width: 190,
              height: 20,
              margin: EdgeInsets.only(top: 12,left: 50),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text('手机号无法接收验证码?',style: TextStyle(fontSize: 12, color: Color(0xff363951)),),
                  ),
                  Container(
                    child: Text(' 联系我们',style: TextStyle(fontSize: 12,color: Color(0xff4285F4)),),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

