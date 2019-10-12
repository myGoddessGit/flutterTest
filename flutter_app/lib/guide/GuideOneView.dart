import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';
class GuideOneView extends StatefulWidget{

  final Function sexSelectedBack;
  GuideOneView({
    this.sexSelectedBack,
  });
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GuideOneViewState();
  }
}
class GuideOneViewState extends State<GuideOneView>{

  ///1表示男 ， 2表示女，默认选择男
  static final EventBus eventBus = EventBus();
  //当前选择的性别
   int sexSelect = 1;
//  //男性
//  static final int sexMan = 1;
//  //女性
//  static final int sexWoman = 2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    eventBus.on<GuideOneViewState>().listen((event){
//      sexSelect = event.widget.sexSelectedBack(sexSelect);
//    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 23 , top: 45),
                  child: Text("1 " , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 2 , top: 45),
                  child: Text("/ 2" , style: TextStyle(color: Color(0xFF363951) , fontSize: 18),),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 250 , top: 45),
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        child: Text(
                          '跳过', style: TextStyle(fontSize: 14, color: Color(0xFF9596A4)),
                        ),
                        onTap: (){
                          Navigator.of(context).pushNamed('/newsView');
                        },
                      )
                    ],
                  )
                ),
              ],
            ),
            new Column(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment(-1.0, 0),
                  padding: EdgeInsets.only(left: 23),
                  child: Text("Hi 介绍一下自己吧!" , style: TextStyle(color: Color(0xFF363951) , fontSize: 22),),
                ),
                new Container(
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment(-1.0, 0),
                  padding: EdgeInsets.only(left: 23),
                  child: Text("简单的自我介绍可以给Hr留个好印象哟" , style: TextStyle(color: Color(0xFFA4A5AD) , fontSize: 13),),
                ),
                new Container(
                    margin: EdgeInsets.only(top: 50),
                    alignment: Alignment(-1.0, 0),
                    padding: EdgeInsets.only(left: 0),
                    height: 50,
                    width: 310,
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
                          child: Text('姓名' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        alignment: Alignment(-1.0 , 0.0),
                        padding: EdgeInsets.only(left: 0),
                        height: 50,
                        width: 250,
                        child: TextField(
                          style : TextStyle(
                            color: Color(0xFF363951) , fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '只能修改一次, 请谨慎填写',
                            hintStyle: TextStyle(
                              color: Color(0xFFC2C4CC) , fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                    margin: EdgeInsets.only( top: 25),
                    alignment: Alignment(-1.0, 0),
                    padding: EdgeInsets.only(left: 0),
                    height: 50,
                    width: 310,
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
                          child: Text('邮箱' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        alignment: Alignment(-1.0 , 0.0),
                        padding: EdgeInsets.only(left: 0),
                        height: 50,
                        width: 250,
                        child: TextField(
                          style : TextStyle(
                            color: Color(0xFF363951) , fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '你的offer将会发送到这里',
                            hintStyle: TextStyle(
                              color: Color(0xFFC2C4CC) , fontSize: 14,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only( top: 25),
                  alignment: Alignment(-1.0, 0),
                  padding: EdgeInsets.only(left: 0),
                  height: 50,
                  width: 310,
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
                        child: Text('性别'  , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        alignment: Alignment(-1.0, 0.0),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  //选择男性时返回1并更新组件
                                  setState(() {
                                    sexSelect = 1;
                                    widget.sexSelectedBack(sexSelect);
                                  });
                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(sexSelect == 1 ? 'assets/ico_true.png' : 'assets/ico_false.png' , width: 20, height: 20,)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        alignment: Alignment(-1.0, 0.0),
                        child: Image.asset('assets/ico_man.png' , width: 20, height: 20,),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 43),
                          alignment: Alignment(-1.0, 0.0),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    sexSelect = 2;
                                    widget.sexSelectedBack(sexSelect);
                                  });
                                  //选择女性时返回2并更新组件
                                },
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(sexSelect == 2 ? 'assets/ico_true.png' : 'assets/ico_false.png' , width: 20, height: 20,)
                                  ],
                                ),
                              ),
                            ],
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        alignment: Alignment(-1.0, 0.0),
                        child: Image.asset('assets/ico_woman.png' , width: 20, height: 20,),
                      ),
                    ],
                  ),
                ),
                new Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 100 , right: 100 , top: 60),
                          height: 48,
                          child: RaisedButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(24.0)),
                            ),
                            child: Text('下一步' , style: TextStyle(color: Colors.white , fontSize: 16),),
                            onPressed: () { Navigator.of(context).pushNamed('/guideViewTwo');},
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

