import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginViewState();
  }
}
class LoginViewState extends State<LoginView> {
  int login = 1;
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
  //int pwd_see = 2;
  TextEditingController _phone = TextEditingController();
  TextEditingController _pwd = TextEditingController();
  TextEditingController _code = TextEditingController();
  String values_phone = "";
  String values_pwd = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 360,
          height: 640,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23),
                child: Image.asset('assets/ico_login_top.png'),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 38, right: 12),
                child: Text('跳过',style: TextStyle(fontSize: 15, color: Color(0xFF95C1FF,), decoration: TextDecoration.none, fontWeight: FontWeight.normal),),
              ),
              Container(
                width: 360,
                margin: EdgeInsets.only(top: 210),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState(() {
                                login = 1;
                                this._pwd.text = "";
                              });
                            },
                            child: Container(
                              width: 135,
                              height: 40,
                              alignment: Alignment(-1.0, 0.0),
                              margin: EdgeInsets.only(top:38, left: 42),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Text('验证码登录', style: TextStyle(fontSize: 15,color: login == 1 ? Color(0xff3388FF) : Color(0xff363951),fontWeight: FontWeight.normal, decoration: TextDecoration.none),),
                                  ),
                                  login == 1 ?
                                  Container(
                                    margin: EdgeInsets.only(top: 6.0),
                                    width: 135,
                                    height: 2.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3388FF),
                                    ),
                                  )
                                  :
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: 135,
                                    child: Divider(
                                      color: Color(0xFFEFF1F5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: (){
                              setState(() {
                                login = 2;
                                this._code.text = "";
                              });
                            },
                            child: Container(
                              width: 135,
                              height: 40,
                              alignment: Alignment(-1.0, 0.0),
                              margin: EdgeInsets.only(top:38, left: 0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Text('密码登录', style: TextStyle(fontSize: 15,color: login == 2 ? Color(0xff3388FF) : Color(0xff363951),fontWeight: FontWeight.normal, decoration: TextDecoration.none),),
                                  ),
                                  login == 2 ?
                                  Container(
                                    margin: EdgeInsets.only(top: 6.0),
                                    width: 135,
                                    height: 2.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xff3388FF),
                                    ),
                                  )
                                      :
                                  Container(
                                    margin: EdgeInsets.only(top: 0),
                                    width: 135,
                                    child: Divider(
                                      color: Color(0xFFEFF1F5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      height: 38,
                      width: 280,
                      child:Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 0),
                              alignment: Alignment(-1.0, 0.0),
                              child: Image.asset('assets/ico_login_phone_blue.png',height: 22,)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            alignment: Alignment(-1.0 , 0.0),
                            width: 230,
                            child: TextField(
                              controller: this._phone,
                                keyboardType: TextInputType.phone,
                                inputFormatters: <TextInputFormatter>[
                                  LengthLimitingTextInputFormatter(11)
                                ],
                                style : TextStyle(
                                  color: Color(0xFF333333) , fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '请输入手机号',
                                  hintStyle: TextStyle(
                                    color: Color(0xffBFC1CB) , fontSize: 14,
                                  ),
                                ),
                                //controller: this._mail,
                                onChanged: (value) {
                                  setState(() {
                                    values_phone = value;
                                  });
                                }
                            ),
                          ),
                          Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 0),
                              alignment: Alignment(-1.0, 0.0),
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
                      width: 280,
                      child: Divider(
                        color: Color(0xFFEFF1F5),
                      ),
                    ),
                    login == 1
                        ?
                    Container(
                      height: 38,
                      width: 280,
                      margin: EdgeInsets.only(top: 12),
                      child:Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 0),
                              alignment: Alignment(-1.0, 0.0),
                              child: Image.asset('assets/ico_login_code_blue.png',height: 22,)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            alignment: Alignment(-1.0 , 0.0),
                            width: 150,
                            child: TextField(
                              controller: this._code,
                                style : TextStyle(
                                  color: Color(0xFF333333) , fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '请输入验证码',
                                  hintStyle: TextStyle(
                                    color: Color(0xffBFC1CB) , fontSize: 14,
                                  ),
                                ),
                                //controller: this._mail,
                                onChanged: (value) {
                                  setState(() {
                                    //values_mail = value;
                                  });
                                }
                            ),
                          ),
                          Container(
                            height: 27,
                            width: 70,
                            margin: EdgeInsets.only(left: 30),
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
                    )
                        :
                    Container(
                      height: 38,
                      width: 280,
                      margin: EdgeInsets.only(top: 12),
                      child:Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 0),
                              alignment: Alignment(-1.0, 0.0),
                              child: Image.asset('assets/ico_login_pwd_blue.png',height: 22,)
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            alignment: Alignment(-1.0 , 0.0),
                            width: 200,
                            child: TextField(
                              obscureText: !pwd_hide,
                              controller: this._pwd,
                                style : TextStyle(
                                  color: Color(0xFF333333) , fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '请输入6-20位数字和密码的组合',
                                  hintStyle: TextStyle(
                                    color: Color(0xffBFC1CB) , fontSize: 14,
                                  ),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    values_pwd = value;
                                  });
                                }
                            ),
                          ),
                          Container(
                              height: 50,
                              margin: EdgeInsets.only(left: 2),
                              alignment: Alignment(-1.0, 0.0),
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
                      width: 280,
                      child: Divider(
                        color: Color(0xFFEFF1F5),
                      ),
                    ),
                    Container(
                      width: 170,
                      height: 44,
                      margin: EdgeInsets.only(top: 12),
                      decoration: BoxDecoration(
                          color: ((this._phone.text.isNotEmpty && this._code.text.isNotEmpty) || (this._phone.text.isNotEmpty && this._pwd.text.isNotEmpty)) ?  Color(0xff3388ff) : Color(0xffF1F1F1),
                          borderRadius: BorderRadius.all(Radius.circular(22.0))
                      ),
                      child: Center(
                        child: Text('登录',style: TextStyle(fontSize: 16, color: Colors.white),),
                      ),
                    ),
                    login == 1
                        ?
                    Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 280,
                        height: 15,
                        child: Center(
                          child: Text('未注册的手机号在登录的时候会默认注册哦',style: TextStyle(fontSize: 12, color: Color(0xff8F919A)),),
                        )
                    )
                        :
                    Container(
                      margin: EdgeInsets.only(top: 8),
                      width: 280,
                      height: 15,
                      child: Center(
                        child: GestureDetector(
                          onTap: (){Navigator.of(context).pushNamed('/Findpass');},
                          child: Text('忘记密码',style: TextStyle(fontSize: 12, color: Color(0xff363951)),),
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 320,
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 90,
                            child: Divider(
                              color: Color(0xffE7E7E7),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 80,
                            child: Text('其他登录方式',style: TextStyle(fontSize: 13, color: Color(0xffA8A8B9)),),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            width: 90,
                            child: Divider(
                              color: Color(0xffE7E7E7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/guideView');
                      },
                      child: Container(
                        width: 40,
                        margin: EdgeInsets.only(top: 12),
                        child: Image.asset('assets/ico_logo_we_chat_new.png'),
                      ),
                    ),
                    Container(
                      width: 50,
                      margin: EdgeInsets.only(top: 4, left: 4),
                      child: Text('微信登录',style: TextStyle(fontSize: 12, color: Color(0xff363951)),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}