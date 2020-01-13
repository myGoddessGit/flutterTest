import 'package:flutter/material.dart';
import 'package:flutter_app/utils/MajorChoose.dart';
class ChooseMajor extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChooseMajorState();
  }
}
class ChooseMajorState extends State<ChooseMajor> {

  int values = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 35,left: 50),
                height: 35,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                  color: Color(0xffF7F9FC),
                ),
                child: Center(
                  child: Text("搜索框还在开发中",style: TextStyle(fontSize: 14, color: Color(0xFFA4A5AD)),),
                )
            ),
            Container(
                margin: EdgeInsets.only(left: 25, top: 35),
                alignment: Alignment(-1.0, 0.0),
                child: GestureDetector (
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset('assets/ico_close.png',width: 15, height: 15,),
                )
            ),
          ],
        ),
        Container(
          width: 360,
          margin: EdgeInsets.only(top: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                height: 560,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 0),
                  children: List.generate(MajorChoose.majorOne.length, (index){
                    return _majorOne(index + 1, MajorChoose.majorOne[index]);
                  }),
                ),
              ),
              Container(
                width: 210,
                height: 560,
                decoration: BoxDecoration(
                  color: Color(0xffF7F9FC),
                ),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 0),
                  children: <Widget>[
                    Offstage(
                      offstage: values != 1,
                      child: Container(
                        width: 200,
                        height: 550,
                        child: ListView(
                          children: List.generate(MajorChoose.majorZX.length, (index){
                            return _majorDetails(MajorChoose.majorZX[index]);
                          })
                        ),
                      )
                    ),
                    Offstage(
                        offstage: values != 2,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorJJ.length, (index){
                              return _majorDetails(MajorChoose.majorJJ[index]);
                            })
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 3,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorFX.length, (index){
                              return _majorDetails(MajorChoose.majorFX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 4,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorJY.length, (index){
                              return _majorDetails(MajorChoose.majorJY[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 5,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorWX.length, (index){
                              return _majorDetails(MajorChoose.majorWX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 6,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorLS.length, (index){
                              return _majorDetails(MajorChoose.majorLS[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 7,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorLX.length, (index){
                              return _majorDetails(MajorChoose.majorLX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 8,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorGX.length, (index){
                              return _majorDetails(MajorChoose.majorGX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 9,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorNX.length, (index){
                              return _majorDetails(MajorChoose.majorNX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 10,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorYX.length, (index){
                              return _majorDetails(MajorChoose.majorYX[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 11,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorGL.length, (index){
                              return _majorDetails(MajorChoose.majorGL[index]);
                            }),
                          ),
                        )
                    ),
                    Offstage(
                        offstage: values != 12,
                        child: Container(
                          width: 200,
                          height: 550,
                          child: ListView(
                            children: List.generate(MajorChoose.majorYS.length, (index){
                              return _majorDetails(MajorChoose.majorYS[index]);
                            }),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _majorOne(int value, String text) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: (){
        setState(() {
          values = value;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, left: 12),
        alignment: Alignment.centerLeft,
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          color: values == value ? Color(0xffF7F9FC) : Colors.white,
        ),
        child: Text(text),
      ),
    );
  }

  Widget _majorDetails(String text) {

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop(text);
      },
      child: Container(
        margin: EdgeInsets.only(top: 30, left: 12),
        width: 100,
        decoration: BoxDecoration(
          color: Color(0xffF7F9FC),
        ),
        child: Text(text),
      ),
    );
  }

}