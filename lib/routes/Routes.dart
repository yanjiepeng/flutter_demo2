import 'package:flutter/material.dart';
import 'package:flutter_demo2/appversion/AppVersionDemo.dart';
import 'package:flutter_demo2/camera/ImagePickerDemo.dart';
import 'package:flutter_demo2/date/Datedemo.dart';
import 'package:flutter_demo2/deviceinfo/DeviceInfoPage.dart';
import 'package:flutter_demo2/localdata/LocalDataDemo.dart';
import 'package:flutter_demo2/map/GDMapDemo.dart';
import 'package:flutter_demo2/net/DioDemoPage.dart';
import 'package:flutter_demo2/net/NetConnect.dart';
import 'package:flutter_demo2/net/SimpleNetPage.dart';
import 'package:flutter_demo2/newsdemo/NewsContent.dart';
import 'package:flutter_demo2/newsdemo/news.dart';
import 'package:flutter_demo2/pages/AppBarDemo.dart';
import 'package:flutter_demo2/pages/ButtonDemoPage.dart';
import 'package:flutter_demo2/pages/dialog/CustomDialog.dart';
import 'package:flutter_demo2/pages/dialog/DialogDemo.dart';
import 'package:flutter_demo2/pages/FormPage.dart';
import 'package:flutter_demo2/pages/Product.dart';
import 'package:flutter_demo2/pages/ProductInfo.dart';
import 'package:flutter_demo2/pages/RadioDemo.dart';
import 'package:flutter_demo2/pages/SwipperDemo.dart';
import 'package:flutter_demo2/pages/TabController.dart';
import 'package:flutter_demo2/pages/Tabs.dart';
import 'package:flutter_demo2/pages/TextFieldDemo.dart';
import 'package:flutter_demo2/pages/UserPage.dart';
import 'package:flutter_demo2/pages/fromdemo/formdemox.dart';
import 'package:flutter_demo2/pages/tabs/SearchPage.dart';
import 'package:flutter_demo2/pages/user/RegisterThird.dart';
import 'package:flutter_demo2/qr/QrScanCode.dart';
import 'package:flutter_demo2/urllauncher/UrlLauncherDemo.dart';
import 'package:flutter_demo2/video/VideoPlayDemo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';



//统一路由
final routes = {
  '/':(context) =>Tabs(),
  '/FormPage': (context) => FormPage(),
  '/login': (context) => LoginPage(),
  '/appbardemo': (context) => AppBarDemo(),
  '/user': (context) => UserPage(),
  '/buttondemo': (context) => ButtonDemoPage(),
  '/tabcontroller': (context) => TabBarControllerPage(),
  '/textfielddemo': (context) => TextFieldDemo(),
  '/RadioDemo': (context) => RadioDemo(),
  '/formdemo': (context) => FormDemoX(),
  '/datedemo': (context) => DateDemo(),
  '/swipperdemo': (context) => SwiperDemo(),
  '/dialog': (context) => DialogDemo(),
  '/customdialog': (context) => CustomDialogPage(),
  '/simplenet': (context) => SimpleNetPage(),
  '/diodemo': (context) => DioDemoPage(),
  '/newspage': (context) => NewsPage(),
  '/deviceinfo': (context) => DeviceInfoPage(),
  '/getlocation': (context) => GDMapDemo(),
  '/imagepicker': (context) => ImagePickerDemo(),
  '/videoplay': (context) => VideoPlayDemo(),
  '/netstate': (context) => NetConnectDemo(),
  '/sp': (context) => LocalDataDemo(),
  '/qr': (context) => QrScanCode(),
  '/appversion': (context) => AppVersionDemo(),
  '/urllauncher': (context) => UrlLauncherDemo(),
  '/newscontent': (context,{arguments}) => NewsContent(arguments:arguments),
  '/search': (context, {arguments}) => SearchPage(arguments: arguments),
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
