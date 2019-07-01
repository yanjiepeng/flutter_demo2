import 'package:flutter/material.dart';
import 'package:flutter_demo2/pages/FormPage.dart';
import 'package:flutter_demo2/pages/Product.dart';
import 'package:flutter_demo2/pages/ProductInfo.dart';
import 'package:flutter_demo2/pages/Tabs.dart';
import 'package:flutter_demo2/pages/tabs/SearchPage.dart';
import 'package:flutter_demo2/pages/user/RegisterThird.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';

final routes = {
  '/':(context) =>Tabs(),
  '/FormPage': (context) => FormPage(),
  '/login': (context) => LoginPage(),
  '/Search': (context, {arguments}) => SearchPage(arguments: arguments),
  '/product': (context, {arguments}) => ProductPage(arguments: arguments),
  '/productInfo': (context, {arguments}) => ProductInfo(arguments: arguments),
  '/registerFirst': (context) => RegisterFirstPage(),
  '/registerSecond': (context) => RegisterSecondPage(),
  '/registerThird': (context) => RegisterThirdPage(),
};

//固定写法
// ignore: strong_mode_top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
