import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class GridViewMore extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new GridViewMoreState();
  }
}

class GridViewMoreState extends State<GridViewMore>{

    var listImage = List();
    @override
  void initState() {
      listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" ));
      listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
      listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
      listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
      listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgdmpxi7erj20qy0qyjtr.jpg" ));
      listImage.add(Image.network("https://k.sinaimg.cn/n/photo/4_img/upload/d411fbc6/30/w1080h1350/20190929/6a1a-ifffqup9627920.jpg/w640slw.jpg" ));
    // TODO: implement initState
    super.initState();
  }
   @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return Scaffold(
       body: _scrollView(context),
     );
   }
   Widget _scrollView(BuildContext context){
     return Container(
       child: CustomScrollView(
         slivers: <Widget>[
           SliverPersistentHeader(
             pinned: false,
             delegate: HeroHeader(
               minExtent: 100.0,
               maxExtent: 250.0,
             ),
           ),
           SliverGrid(
             gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
               maxCrossAxisExtent: 250.0,
               mainAxisSpacing: 1,
               crossAxisSpacing: 1,
               childAspectRatio: 1,
             ),
             delegate: SliverChildBuilderDelegate(
                   (BuildContext context , int index){
                 return Container(
                   alignment: Alignment.center,
                   padding: _edgeInsetsForIndex(index),
                   child: InkWell(
                     onTap: (){

                       print(listImage[index]);
                       Navigator.of(context).push(MaterialPageRoute(builder: (context){
                         return PhotoPreView(
                           initialIndex: index,
                           photoList: listImage,
                         );
                       }
                       )
                       );
                     },
                     child: Swiper(
                       itemBuilder: _swiperBuilder,
                       itemCount: listImage.length,
                     )
                   ),
                 );
               },
               childCount: listImage.length,
             ),
           ),
         ],
       ),
     );
   }
   EdgeInsets _edgeInsetsForIndex(int index){
     if(index % 2 == 0){
       return  EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
     }else{
       return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
     }
   }
    Widget _swiperBuilder(BuildContext context, int index) {
      return (listImage[index]);
    }
}

class HeroHeader implements SliverPersistentHeaderDelegate{
  HeroHeader(
  {
    this.onLayoutToggle,
    this.minExtent,
    this.maxExtent,
  }
      );
  final VoidCallback onLayoutToggle;
  double maxExtent;
  double minExtent;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" , fit: BoxFit.fill,),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.5 , 1.0],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.repeated,
            ),
          ),
        ),
        Positioned(
          left: 16.0,
          right: 16.0,
          bottom: 16.0,
          child: Text(
            'PhotoView Gallery',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}

//photoView 点击小图后的效果

class PhotoPreView extends StatefulWidget{
  final int initialIndex;
  final List photoList;
  final PageController pageController;

  PhotoPreView(
  {
    this.initialIndex ,
    this.photoList
  }
      ) : pageController = PageController(initialPage: initialIndex);

  _PhotoPreviewState createState() =>_PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreView>{
  int currentIndex;
  var listImage = List();
  @override
  void initState() {
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgdmpxi7erj20qy0qyjtr.jpg" ));
    listImage.add(Image.network("https://k.sinaimg.cn/n/photo/4_img/upload/d411fbc6/30/w1080h1350/20190929/6a1a-ifffqup9627920.jpg/w640slw.jpg" ));
    listImage.add(Image.network("https://k.sinaimg.cn/n/photo/4_img/upload/d411fbc6/30/w1080h1350/20190929/6a1a-ifffqup9627920.jpg/w640slw.jpg" ));
    // TODO: implement initState
    super.initState();
  }
  //图片切换
  void onPageChanged(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Swiper(
        itemBuilder: _swiperBuilder,
        itemCount: listImage.length,
        pagination: new SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                color: Colors.blue,
                activeColor: Colors.white
            )
        ),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
  Widget _swiperBuilder(BuildContext context, int index) {
    return (listImage[index]);
  }
}



