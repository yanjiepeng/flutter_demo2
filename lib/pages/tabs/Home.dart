import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到图片轮播测试DEMO"),
                onPressed: () {
                  Navigator.pushNamed(context, '/swipperdemo');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text("跳转到搜索页面"),
                onPressed: () {
                  //路由跳转
                  Navigator.pushNamed(context, '/search',
                      arguments: {"id": 123});
                },
                color: Theme.of(context).accentColor,
                textTheme: ButtonTextTheme.primary),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到商品页面"),
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                }),
            RaisedButton(
                child: Text("Dialog&Toast"),
                onPressed: () {
                  Navigator.pushNamed(context, '/dialog');
                }),
            RaisedButton(
                child: Text("自定义dialog"),
                onPressed: () {
                  Navigator.pushNamed(context, '/customdialog');
                }),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到TabController"),
                onPressed: () {
                  Navigator.pushNamed(context, '/tabcontroller');
                }),
            SizedBox(height: 10),
            RaisedButton(
                child: Text("跳转到ButtonDemo"),
                onPressed: () {
                  Navigator.pushNamed(context, '/buttondemo');
                }),
          ],
        ),
        SizedBox(height: 10),
        Wrap(
          children: <Widget>[
            RaisedButton(
                child: Text("跳转到表单演示"),
                onPressed: () {
                  Navigator.pushNamed(context, '/textfielddemo');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text("跳转到Radio演示"),
                onPressed: () {
                  Navigator.pushNamed(context, '/RadioDemo');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text("跳转到信息登记系统"),
                onPressed: () {
                  Navigator.pushNamed(context, '/formdemo');
                }),
            SizedBox(width: 10),
            RaisedButton(
                child: Text("跳转到日期演示demo"),
                onPressed: () {
                  Navigator.pushNamed(context, '/datedemo');
                }),
            SizedBox(
              height: 5,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/simplenet');
              },
              child: Text('简易网络请求'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/diodemo');
              },
              child: Text('Dio网络请求'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/newspage');
              },
              child: Text('新闻翻页demo'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/deviceinfo');
              },
              child: Text('读取设备信息'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/getlocation');
              },
              child: Text('高德地图定位'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/imagepicker');
              },
              child: Text('相机与相册'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/videoplay');
              },
              child: Text('视频播放'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/netstate');
              },
              child: Text('网络状态监控'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sp');
                  },
                  child: Text('本地数据存贮'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/qr');
                  },
                  child: Text('扫码'),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/appversion');
                  },
                  child: Text('app版本更新'),
                ),
              ],
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/appversion');
              },
              child: Text('外部应用调用'),
            ),
          ],
        ),
      ],
    );
  }
}
