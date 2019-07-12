import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert' as convert;

//新闻demo

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List list = new List();

  var _scrollController = ScrollController();

  int currentPage = 1;
  bool hasmore = true;
  final int PAGE_COUNT = 20;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    this._getdata();

    //上划翻页
    this._scrollController.addListener(() {
      print(this._scrollController.position.pixels); //滚动条滑动距离
      print(this._scrollController.position.maxScrollExtent); //整个页面高度

      if (this._scrollController.position.pixels >
          (this._scrollController.position.maxScrollExtent - 40)) {
        //加载更多

        print('加载更多');
        this._getdata();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('分页新闻demo'),
        ),
        body: this.list.length > 0
            ? RefreshIndicator(
                child: ListView.builder(
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    if (index == this.list.length - 1) {
                      //拉到一页底部了
                      return Column(
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, '/newscontent',
                                  arguments: {'aid': list[index]['aid']});
                            },
                            title: Text(
                              this.list[index]['title'],
                              maxLines: 1,
                            ),
                            subtitle: Text(this.list[index]['username']),
                            leading: Image.network(
                              'https://imgs.aixifan.com/style/image/201907/ccoYfmsvGxCTI9FVUTye8W6N6DLhQefn.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Divider(),
                          _getMoreWidget()
                        ],
                      );
                    } else {
                      return Column(
                        children: <Widget>[
                          ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, '/newscontent',
                                  arguments: {'aid': list[index]['aid']});
                            },
                            title: Text(
                              this.list[index]['title'],
                              maxLines: 1,
                            ),
                            subtitle: Text(this.list[index]['username']),
                            leading: Image.network(
                              'https://imgs.aixifan.com/style/image/201907/ccoYfmsvGxCTI9FVUTye8W6N6DLhQefn.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Divider()
                        ],
                      );
                    }
                  },
                  itemCount: this.list.length,
                ),
                onRefresh: _onRefresh)
            : _getMoreWidget());
  }

  void _getdata() async {
    if (this.hasmore) {
      var url =
          'http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${this.currentPage}';

      var response = await Dio().get(url);

      var res = json.decode(response.data)['result'];

      print(res);

      setState(() {
        this.list.addAll(res);
        currentPage++;
      });

      //是否是最后一页数据 （数据量<20）
      if (res.length < this.PAGE_COUNT) {
        setState(() {
          this.hasmore = false;
        });
      }
    }
  }

  //下拉刷新方法
  Future<void> _onRefresh() async {
    print('下拉刷新');

    //2s延时后执行
    await Future.delayed(Duration(microseconds: 2000), () {
      _getdata();
    });
  }

  //加载中的圈圈
  Widget _getMoreWidget() {
    if (this.hasmore) {
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
    } else {
      return Center(
        child: Text("--我是有底线的--"),
      );
    }
  }
}
