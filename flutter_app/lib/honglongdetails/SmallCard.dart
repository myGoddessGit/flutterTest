import 'package:flutter/material.dart';

class SmallCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SmallCardState();
  }
}

class SmallCardState extends State<SmallCard> {

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
          margin: EdgeInsets.only(left: 85),
          padding: EdgeInsets.only(top: 0),
          child: Text('小名片', style: TextStyle(fontSize: 16 , color: Color(0xFF363951)),),
        ),
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment(-1.0, 0.0),
              padding: EdgeInsets.only(left: 21),
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFFF6F7F8),
              ),
              child: Text('修改后的小名片信息将同步到所简历',style: TextStyle(fontSize: 15 , color: Color(0xFF8C98A7)),),
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('头像', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 250),
                  height: 55,
                  child: ClipOval(
                    child: Image.asset('assets/imagesTwo.jpg',height: 45, width: 45, fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('姓名', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 175),
                  height: 55,
                  width: 121,
                  child: TextField(
                    textAlign: TextAlign.right,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '只有一次修改机会',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('性别', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 250),
                  height: 55,
                  width: 20,
                  child: TextField(
                    enabled: false,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  height: 55,
                  margin: EdgeInsets.only(left: 7),
                  child: Image.asset('assets/icon_profile_arrow.png',width: 15, height: 15,),
                )
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('毕业院校', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 145),
                  height: 55,
                  width: 121,
                  child: TextField(
                    textAlign: TextAlign.right,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '请填写学校全称',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('最高学历', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 220),
                  height: 55,
                  width: 20,
                  child: TextField(
                    enabled: false,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  height: 55,
                  margin: EdgeInsets.only(left: 7),
                  child: Image.asset('assets/icon_profile_arrow.png',width: 15, height: 15,),
                )
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('专业类别', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 220),
                  height: 55,
                  width: 20,
                  child: TextField(
                    enabled: false,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  height: 55,
                  margin: EdgeInsets.only(left: 7),
                  child: Image.asset('assets/icon_profile_arrow.png',width: 15, height: 15,),
                )
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('毕业年份', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 220),
                  height: 55,
                  width: 20,
                  child: TextField(
                    enabled: false,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  height: 55,
                  margin: EdgeInsets.only(left: 7),
                  child: Image.asset('assets/icon_profile_arrow.png',width: 15, height: 15,),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('手机号', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 191),
                  height: 55,
                  width: 90,
                  child: TextField(
                    textAlign: TextAlign.right,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '请填写',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _container,
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  padding: EdgeInsets.only(left: 21),
                  height: 55,
                  child: Text('邮箱', style: TextStyle(fontSize: 15 , color: Color(0xFF363951)),),
                ),
                Container(
                  alignment: Alignment(-1.0, 0.0),
                  margin: EdgeInsets.only(left: 85),
                  height: 55,
                  width: 210,
                  child: TextField(
                    textAlign: TextAlign.right,
                    style : TextStyle(
                      color: Color(0xFF363951) , fontSize: 15,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '用于接收HR反馈，请谨慎填写',
                      hintStyle: TextStyle(
                        color: Color(0xFFC2C4CC) , fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            _container,
            new Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20 , right: 20 , top: 0 , bottom: 20),
                      height: 48,
                      child: RaisedButton(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        ),
                        child: Text('完成' , style: TextStyle(color: Colors.white , fontSize: 16),),
                        onPressed: () {
                          //Navigator.of(context).pushNamed('/numberView');
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container _container = new Container (
    padding: EdgeInsets.only(left: 21,),
    alignment: Alignment(-1.0, 0.0),
    child: Divider(
      color: Color(0xFFEFF1F5),
      height: 0.5,
    ),
  );
}