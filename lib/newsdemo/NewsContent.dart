import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class NewsContent extends StatefulWidget {
  Map arguments;

  NewsContent({this.arguments});

  @override
  _NewsContentState createState() => _NewsContentState(this.arguments);
}

class _NewsContentState extends State<NewsContent> {
  Map arguments;
  String newsTitle = '';
  String newsContent = '';

  String _index = '';
  List _mContentList = [];

  bool _flag = true;

  InAppWebViewController inAppWebViewController;

  _NewsContentState(this.arguments);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print(arguments);

//    getNewsContent(arguments['aid']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.newsTitle}'),
      ),
      body:
          //通过flutter html加载html处理复杂html显示效果不好
          /*Html(
            data: """

            ${this.newsContent}
  """,
            //Optional parameters:
            padding: EdgeInsets.all(8.0),
            linkStyle: const TextStyle(
              color: Colors.redAccent,
              decorationColor: Colors.redAccent,
              decoration: TextDecoration.underline,
            ),
            onLinkTap: (url) {
              print("Opening $url...");
            },
            onImageTap: (src) {
              print(src);
            },
            //Must have useRichText set to false for this to work
            customRender: (node, children) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "custom_tag":
                    return Column(children: children);
                }
              }
              return null;
            },
            customTextAlign: (dom.Node node) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "p":
                    return TextAlign.justify;
                }
              }
              return null;
            },
            customTextStyle: (dom.Node node, TextStyle baseStyle) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "p":
                    return baseStyle.merge(TextStyle(height: 2, fontSize: 20));
                }
              }
              return baseStyle;
            },
          )*/

          //建议使用webview
          Container(
        child: Column(
          children: <Widget>[

            this._flag?_getMoreWidget():Text(""),

            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child:
                     InAppWebView(
                        initialUrl:
                            "http://www.phonegap100.com/newscontent.php?aid=${this.arguments["aid"]}",
                        onProgressChanged: (InAppWebViewController controller,
                            int progress) async {
                          if ((progress / 100) > 0.999) {
                            var response = await controller.getTitle();

                            setState(() {
                              this._flag = false;
                              this.newsTitle = response;
                            });
                          }
                        },
                        onWebViewCreated: (InAppWebViewController controller) {
                          this.inAppWebViewController = controller;
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getNewsContent(String index) async {
    var apiUrl =
        'http://www.phonegap100.com/appapi.php?a=getPortalArticle&aid=$index';

    var response = await Dio().get(apiUrl);

    print(response.data);

    this._mContentList = json.decode(response.data)['result'];

    print(this._mContentList);

    setState(() {
      this.newsTitle = this._mContentList[0]['title'];
      this.newsContent = this._mContentList[0]['content'];
    });
  }

  //加载中的圈圈
  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '加载中...',
              style: TextStyle(fontSize: 16.0),
            ),
            CircularProgressIndicator(
              strokeWidth: 1.0,
            )
          ],
        ),
      ),
    );
  }
}
