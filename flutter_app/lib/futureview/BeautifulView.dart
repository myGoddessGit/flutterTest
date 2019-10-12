import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class BeautifulView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BeautifulViewState();
  }
}

class BeautifulViewState extends State<BeautifulView>{
  var listImage = List();
  @override
  void initState() {
    // TODO: implement initState
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgdmpxi7erj20qy0qyjtr.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgdmpxi7erj20qy0qyjtr.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgdmpxi7erj20qy0qyjtr.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/mw690/610dc034ly1ffwb7npldpj20u00u076z.jpg" ));
    listImage.add(Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fgchgnfn7dj20u00uvgnj.jpg" ));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment(-1.0, 0.0),
            margin: EdgeInsets.only( top: 30.0),
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1ffyp4g2vwxj20u00tu77b.jpg",),
                Image.network("https://ws1.sinaimg.cn/large/610dc034ly1fg5dany6uzj20u011iq60.jpg",),
              ],
            )
          ),
          SizedBox(
            height: 35,
          ),
          Expanded(
            child: Container(
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
            ),
          ),
        ],
      ),
    );
  }
  Widget _swiperBuilder(BuildContext context, int index) {
    return (listImage[index]);
  }
}

