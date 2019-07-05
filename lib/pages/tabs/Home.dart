import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: () {
              //路由跳转
              Navigator.pushNamed(context, '/search', arguments: {"id": 123});
            },
            color: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("跳转到商品页面"),
            onPressed: () {
              Navigator.pushNamed(context, '/product');
            }),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("跳转到TabController"),
            onPressed: () {
              Navigator.pushNamed(context, '/tabcontroller');
            }),
        SizedBox(height: 20),
        RaisedButton(
            child: Text("跳转到ButtonDemo"),
            onPressed: () {
              Navigator.pushNamed(context, '/buttondemo');
            }),
        SizedBox(height: 10),
        RaisedButton(
            child: Text("跳转到表单演示"),
            onPressed: () {
              Navigator.pushNamed(context, '/textfielddemo');
            }),
        SizedBox(height: 10),
        RaisedButton(
            child: Text("跳转到Radio演示"),
            onPressed: () {
              Navigator.pushNamed(context, '/RadioDemo');
            }),
        SizedBox(height: 10),
        RaisedButton(
            child: Text("跳转到信息登记系统"),
            onPressed: () {
              Navigator.pushNamed(context, '/formdemo');
            }),
        SizedBox(height: 10),
        RaisedButton(
            child: Text("跳转到日期演示demo"),
            onPressed: () {
              Navigator.pushNamed(context, '/datedemo');
            }),
      ],
    );
  }
}
