import 'package:flutter/material.dart';
import 'package:flutter_app/awesomelist/utils/constant.dart' as CONSTANT;

class HomeBodyTop extends StatelessWidget{
  const HomeBodyTop({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Transform.translate(
      offset: Offset(0, -CONSTANT.appBarHeight),
      child: Container(
        child: ClipPath(
          clipper: MyClipper(),
          child: Stack(
            children: <Widget>[
              FadeInImage(
                width: MediaQuery.of(context).size.width,
                image: NetworkImage('https://picsum.photos/200?random'),
                fit: BoxFit.fill,
                placeholder: AssetImage('assets/loading.gif'),
              ),
              Opacity(
                opacity: 0.3,
                child: Container(color: CONSTANT.colors[0],),
              ),
              Transform.translate(
                offset:Offset(0, 50),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(CONSTANT.userAvatar),
                  ),
                  title: Text(
                    CONSTANT.userName,
                    style: CONSTANT.defaultTextStyle,
                    textScaleFactor: 1.5,
                  ),
                  subtitle: Text(
                    CONSTANT.userProflie,
                    style: CONSTANT.defaultTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height / 4.75);
    path.lineTo(0.0, size.height / 3.75);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}