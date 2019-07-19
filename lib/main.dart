import 'package:flutter/material.dart';
import 'package:flutter_demo2/pages/FormPage.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'pages/Tabs.dart';
import 'pages/tabs/SearchPage.dart';

import 'routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //配置传参命名路由

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //是否在APP右上角显示DEBUG图标

//        home: Tabs(),

      //初始化加载哪一个路由

      initialRoute: '/',

      onGenerateRoute: onGenerateRoute,

      //命名路由
      //必须定义在根组件
//      routes: {
//      '/FormPage': (context) => FormPage(),
//      '/Search': (context) => SearchPage(),
//    }

      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('zh', 'CH'), const Locale('en', 'US')],
    );
  }
}
