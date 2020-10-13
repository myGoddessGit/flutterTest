import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class PhotoViewPage extends StatefulWidget {
  @override
  _PhotoViewPageState createState() => _PhotoViewPageState();
}

class _PhotoViewPageState extends State<PhotoViewPage> {
  List<String> assetNames = [
    'assets/imagesOne.jpg',
    'assets/imagesTwo.jpg',
    'assets/imagesThree.jpg',
    'assets/imagesFour.jpg',
    'assets/imagesFive.jpg',
    'assets/imagesSix.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _scrollView(context),
    );
  }

  Widget _scrollView(BuildContext context) {
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
                  (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.center,
                    padding: _edgeInsetsForIndex(index),
                    child: InkWell(
                      onTap: () {
                        print(assetNames[index]);
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return PhotoPreview(
                            initialIndex: index,
                            photoList: assetNames,
                          );
                        }));
                      },
                      child: Image.asset(
                        assetNames[index],
                        height: 250.0,
                        width: 250.0,
                        fit: BoxFit.cover,
                      ),
                    ));
              },
              childCount: assetNames.length,
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets _edgeInsetsForIndex(int index) {
    if (index % 2 == 0) {
      return EdgeInsets.only(top: 4.0, left: 8.0, right: 4.0, bottom: 4.0);
    } else {
      return EdgeInsets.only(top: 4.0, left: 4.0, right: 8.0, bottom: 4.0);
    }
  }
}

class HeroHeader implements SliverPersistentHeaderDelegate {
  HeroHeader({
    this.onLayoutToggle,
    this.minExtent,
    this.maxExtent,
  });
  final VoidCallback onLayoutToggle;
  double maxExtent;
  double minExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/imagesOne.jpg',
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.black54,
              ],
              stops: [0.5, 1.0],
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
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration get stretchConfiguration => null;
}

//PhotoPreview 点击小图后的效果
class PhotoPreview extends StatefulWidget {
  final int initialIndex;
  final List<String> photoList;
  final PageController pageController;

  PhotoPreview({this.initialIndex, this.photoList})
      : pageController = PageController(initialPage: initialIndex);

  @override
  _PhotoPreviewState createState() => _PhotoPreviewState();
}

class _PhotoPreviewState extends State<PhotoPreview> {
  int currentIndex;
  @override
  void initState() {
    currentIndex = widget.initialIndex;
    super.initState();
  }
  //图片切换
  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 720,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 100,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 12),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Container(
                height: 100,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 20),
                child: Text("${currentIndex + 1} / ${widget.photoList.length}",style: TextStyle(color: Colors.black45, fontSize: 18, decoration: TextDecoration.none),),
              ),
            ],
          ),
          Container(
            width: 360,
            height: 450,
            child: PhotoViewGallery.builder(
            scrollPhysics: const BouncingScrollPhysics(),
            onPageChanged: onPageChanged,
            itemCount: widget.photoList.length,
            pageController: widget.pageController,
            builder: (BuildContext context, int index) {
            return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(widget.photoList[index]),
              minScale: PhotoViewComputedScale.contained * 0.6,
              maxScale: PhotoViewComputedScale.covered * 1.1,
              initialScale: PhotoViewComputedScale.contained,
            );
            },
            ),
            ),
        ],
      ),
    );
  }
}