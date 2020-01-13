import 'dart:ui';
import 'dart:math';
import 'dart:async';
import 'package:flutter/material.dart';

class ClockPage extends StatefulWidget {
  final double radius;
  final Color hourHandColor;
  final Color minuteHandColor;
  final Color secondHandColor;
  final Color numberColor;
  final Color borderColor;

  const ClockPage({
    Key key,
    this.radius = 150.0,
    this.hourHandColor,
    this.minuteHandColor,
    this.secondHandColor,
    this.numberColor,
    this.borderColor
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ClockPageState();
  }
}
class ClockPageState extends State<ClockPage>{
  DateTime dateTime;
  Timer timer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTime = DateTime.now();
    timer = Timer.periodic(Duration(seconds: 1),(timer){
      setState(() {
        dateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer.cancel();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomPaint(
      painter: ClockPainter(
        dateTime,
        numberColor: Colors.black,
        handColor: Colors.grey,
        borderColor: Colors.blue,
        radius: widget.radius),
      size: Size(widget.radius * 2, widget.radius * 2),
      );
  }
}

class ClockPainter extends CustomPainter {
  final Color handColor;
  final Color numberColor;
  final Color borderColor;
  final double radius;
  List<Offset> secondsOffset = [];
  final DateTime dateTime;
  TextPainter textPainter;
  double angle;
  double borderWidth;

  ClockPainter(this.dateTime,
  {this.radius = 150.0,
    this.handColor = Colors.black,
    this.numberColor = Colors.grey,
    this.borderColor = Colors.blue}){
    borderWidth = radius / 14;
    final secondDistance = radius - borderWidth * 2;
    for (var i = 0; i < 60; i++){
      Offset offset = Offset(
        cos(degToRad(6 * i - 90)) * secondDistance + radius,
        sin(degToRad(6 * i - 90)) * secondDistance + radius
      );
      secondsOffset.add(offset);
    }
    textPainter = new TextPainter(
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl
    );
    angle = degToRad(360 / 60);
  }
  @override
  void paint(Canvas canvas, Size size) {
    final scale = radius / 150;
    /// 画边框
    final borderPaint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;
    canvas.drawCircle(Offset(radius, radius), radius - borderWidth / 2, borderPaint);
    /// 画秒针的刻度
    final secondPPaint = Paint()
      ..strokeWidth = 2 * scale
      ..color = numberColor;
    if (secondsOffset.length > 0){
      canvas.drawPoints(PointMode.points, secondsOffset, secondPPaint);
      canvas.save();
      canvas.translate(radius, radius);
      List<Offset> bigger = [];
      for (var i = 0; i < secondsOffset.length; i++){
        if (i % 5 == 0){
          bigger.add(secondsOffset[i]);
          /// 画数字
          canvas.save();
          canvas.translate(0.0, -radius + borderWidth * 4);
          textPainter.text = new TextSpan(
            text: "${(i ~/ 5) == 0 ? "12" : (i ~/5)}",
            style: TextStyle(
              color: numberColor,
              fontFamily: 'Times New Roman',
              fontSize: 28.0 * scale,
            ),
          );
          /// 使文本垂直绘制
          canvas.rotate(-angle * i);
          textPainter.layout();
          textPainter.paint(canvas, Offset(-(textPainter.width / 2), -(textPainter.height / 2)));
          canvas.restore();
        }
        canvas.rotate(angle);
      }
      canvas.restore();
      final biggerPaint = Paint()
        ..strokeWidth = 5 * scale
        ..color = numberColor;
      canvas.drawPoints(PointMode.points, bigger, biggerPaint);
    }
    final hour = dateTime.hour;
    final minute = dateTime.minute;
    final second = dateTime.second;

    /// 画时针
    Offset hourHand1 = Offset(
      radius - cos(degToRad(360 / 12 * hour - 90)) * (radius * 0.2),
      radius - sin(degToRad(360 / 12 * hour - 90)) * (radius * 0.2)
    );
    Offset hourHand2 = Offset(
      radius + cos(degToRad(360 / 12 * hour - 90)) * (radius * 0.5),
      radius + sin(degToRad(360 / 12 * hour - 90)) * (radius * 0.5)
    );
    final hourPaint = Paint()
      ..color = handColor
      ..strokeWidth = 8 * scale;
    canvas.drawLine(hourHand1, hourHand2, hourPaint);

    /// 画分针
    Offset minuteHand1 = Offset(
      radius - cos(degToRad(360 / 60 * minute - 90)) * (radius * 0.3),
      radius - sin(degToRad(360 / 60 * minute - 90)) * (radius * 0.3)
    );
    Offset minuteHand2 = Offset(
      radius + cos(degToRad(360 / 60 * minute - 90)) * (radius - borderWidth * 3),
      radius + sin(degToRad(360 / 60 * minute - 90)) * (radius - borderWidth * 3)
    );
    final minutePaint = Paint()
      ..color = handColor
      ..strokeWidth = 3 * scale;
    canvas.drawLine(minuteHand1, minuteHand2, minutePaint);

    /// 画秒针
    Offset secondHand1 = Offset(
      radius - cos(degToRad(360 / 60 * second - 90)) * (radius * 0.3),
      radius - sin(degToRad(360 / 60 * second - 90)) * (radius * 0.3)
    );
    Offset secondHand2 = Offset(
      radius + cos(degToRad(360 / 60 * second - 90)) * (radius - borderWidth * 3),
      radius + sin(degToRad(360 / 60 * second - 90)) * (radius - borderWidth * 3)
    );
    final secondPaint = Paint()
      ..color = handColor
      ..strokeWidth = 1 * scale;
    canvas.drawLine(secondHand1, secondHand2, secondPaint);

    final centerPaint = Paint()
      ..strokeWidth = 2 * scale
      ..style = PaintingStyle.stroke
      ..color = Colors.yellow;
    canvas.drawCircle(Offset(radius, radius), 4 * scale, centerPaint);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

num degToRad(num deg) => deg * (pi / 180.0);
num radToDeg(num rad) => rad * (180.0 / pi);

class Oclock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OclockState();
  }
}
class OclockState extends State<Oclock>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
      width: 360,
      color: Colors.white,
      child: Center(
        child: ClockPage(),
      ),
    );
  }
}