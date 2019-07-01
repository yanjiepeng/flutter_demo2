import 'package:flutter/material.dart';

import 'SearchPage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
//            基本路由
//            Navigator.of(context).push(MaterialPageRoute(
//              builder: (context) => SearchPage(),
//            ));

            //统一方式路由并传值

            Navigator.pushNamed(context, '/Search', arguments: {'id': '123'});
          },
          child: Text('跳转到搜索界面'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 200,
        ),
        RaisedButton(
          onPressed: () {
            //路由传值 通过构造方法  基本路由
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => FormPage( title:'我是跳转传值')));

            //命名路由
            Navigator.pushNamed(context, '/FormPage');
          },
          child: Text('跳转到表单并传值'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/product',arguments:{'id':'12345'});

          },
          child: Text('跳转到商品'),
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}
