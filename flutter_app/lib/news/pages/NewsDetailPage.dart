import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/news/constants/Constants.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NewsDetailPage extends StatefulWidget {
  final String url;
  final String title;
  final String postId;

  const NewsDetailPage({Key key, this.postId, this.url, this.title}):
      super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new NewsDetailPageState();
  }
}

class NewsDetailPageState extends State<NewsDetailPage>{
  bool loaded = false;
  String detailDataStr;
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  NewsDetailPageState({Key key});

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    flutterWebViewPlugin.onStateChanged.listen((state){
      print("state: ${state.type}");
      if(state.type == WebViewState.finishLoad){
        setState(() {
          loaded = true;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    List<Widget> titleCount = [];
    titleCount.add(
        Text(
      widget.title == null || widget.title.isEmpty
          ? Strings.newsDetail : widget.title,
      style: TextStyle(color: Colors.white),
    ));
    if (!loaded) {
      titleCount.add(CupertinoActivityIndicator());
    }
    titleCount.add(Container(width: 50.0,));
    return WebviewScaffold(
      url:widget.url,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: titleCount,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      withZoom: false,
      withLocalStorage: true,
      withJavascript: true,
    );
  }
}
