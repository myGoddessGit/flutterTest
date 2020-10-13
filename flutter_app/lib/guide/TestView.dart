import 'package:flutter/material.dart';
import 'package:flutter_app/honglongapi/CityData.dart';
class TestView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TestViewState();
  }
}
class TestViewState extends State<TestView>{
  List<CollegeCollege> data = List();
  List<CollegeCollege> dataes = List();
  TextEditingController _schools = TextEditingController();
  bool hide = false;
  dynamic val;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _pullData();
//    _init(val);
  }
  void _pullData() async {

  }
  void _init(value) {
    val = value;
    for (int index = 0; index < data.length; index++) {
      if (data[index].name != null && data[index].name.startsWith(value.toString()) && value != ""){
         dataes.add(data[index]);
       }
    }
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
              children: <Widget>[
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
                          child: Text('毕业学校' , style: TextStyle(fontSize: 14 , color: Color(0xFF363951)),)
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        alignment: Alignment(-1.0 , 0.0),
                        padding: EdgeInsets.only(left: 0),
                        height: 50,
                        width: 220,
                        child: TextField(
//                          controller: TextEditingController.fromValue(
//                            TextEditingValue(
//                              text: this._schools.text,
//                              selection: TextSelection.fromPosition(
//                                TextPosition(
//                                  affinity: TextAffinity.downstream,
//                                  offset: this._schools.text.length
//                                )
//                              )
//                            )
//                          ),
                        controller: this._schools,
                          style : TextStyle(
                            color: Color(0xFF363951) , fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '请输入学校名称',
                            hintStyle: TextStyle(
                              color: Color(0xFFC2C4CC) , fontSize: 14,
                            ),
                          ),
                          onChanged: (val){
                             setState(() {
                               dataes.clear();
                               _init(val);
                             });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Offstage(
                    offstage: hide || this._schools.text.isEmpty || val.toString().isEmpty,
                    child: Container(
                      width: 310,
                      height: dataes.length <= 5 ? dataes.length * 30.0 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xffE7E7E7),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                      child: ListView.builder(
                        //scrollDirection: Axis.vertical,
                        itemCount: dataes.length,
                        itemExtent: 30.0,
                        padding: EdgeInsets.only(top: 14,left: 8),
                        itemBuilder: (context, index){
                          hide = false ;
                          return _school(context, index);
                        },
                      ),
                    ),
                  ),
            ],
      )
    );
  }
  _school(context, index) {
    return GestureDetector(
      onTap: () {
        this._schools.text = dataes[index].name;
        setState(() {
          hide = true ;
        });
      },
      child: Container(
        child: RichText(
          text: TextSpan(
            children: <TextSpan> [
              TextSpan(
                text: dataes[index].name.substring(0,this._schools.text.length),
                style: TextStyle(fontSize: 14,color: Color(0xff777eff))
              ),
              TextSpan(
                text: dataes[index].name.substring(this._schools.text.length,dataes[index].name.length),
                style: TextStyle(fontSize: 14, color: Color(0xff5D6773))
              )
            ],
          ),
        ),
      ),
    );
  }
}