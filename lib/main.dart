import 'package:flutter/material.dart';

import 'package:flutter_demo2/image/RoundedImage.dart';

import 'AspectRatioDemo/AspectRatioDemo.dart';
import 'cardDemo/CardDemo.dart';
import 'gridview/BuilderGridView.dart';
import 'gridview/SimpleGrideview1.dart';
import 'image/RoundedImage2.dart';
import 'image/AssetImageDemo.dart';
import 'layout/AbsoluteLayout.dart';
import 'layout/ColumLayoutDemo.dart';
import 'layout/ExpandedLayout.dart';
import 'layout/LayoutDemo1.dart';
import 'layout/MultiLayoutDemo.dart';
import 'layout/RowLayoutDemo.dart';
import 'layout/WrapLayout.dart';
import 'listview/BuilderJsonListview.dart';
import 'listview/BuilderListView.dart';
import 'listview/ResDataListview.dart';
import 'listview/CustomListView.dart';
import 'listview/DynamicDataListview.dart';
import 'listview/HorizontalList.dart';
import 'listview/SimpleListview1.dart';
import 'listview/SimpleListviewImageNet.dart';
import 'listview/SimpleListviewWithImage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.




  @override
  Widget build(BuildContext context) {
//  return HomeContent();

//  return MaterialDemp();

//    return MyMaterialApp();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My flutter demo'),
        ),
        body: WrapLayout2(),
      ),
    );
  }
}







//图片组件使用 加载网络和本地图片

class ImageDemoContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Image.network(
          'http://wx4.sinaimg.cn/large/005WT9E5gy1fwxc26ktmfj30sa03wab8.jpg',
          //显示位置
          alignment: Alignment.topLeft,
          //混合图片颜色 将图片本身背景改成蓝色
          color: Colors.blue,
          colorBlendMode: BlendMode.darken,
          //图片拉伸方式 一般使用cover 剪裁铺满
          fit: BoxFit.contain,
          //图片平铺
          repeat: ImageRepeat.repeatY,
        ),
      ),
    );
  }
}

//Container使用 及常用container属性和text属性
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          '我是一个文本我是一个文本我是一个文本',
          textAlign: TextAlign.center,
          //文本溢出显示参数
          overflow: TextOverflow.ellipsis,
          //文本行数最大值
          maxLines: 1,
          //字体缩放
          textScaleFactor: 1.2,

          style: TextStyle(
              fontSize: 24.0,
              color: Colors.red,
              backgroundColor: Colors.blue,
              //字体粗细
              fontWeight: FontWeight.w800,
              //字体倾斜
              fontStyle: FontStyle.italic,
              //下划线
              decoration: TextDecoration.underline,
              //线的颜色
              decorationColor: Colors.white,
              //线的样式
              decorationStyle: TextDecorationStyle.dotted,
              //字间距
              letterSpacing: 5.0),
        ),

        width: 300.0,
        height: 300.0,
//        color: Colors.cyan,

        decoration: BoxDecoration(
            color: Colors.cyan,
            border: Border.all(color: Colors.yellow, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        //padding
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),

        //container 位移
//          transform: Matrix4.translationValues(10.0, 10.0, 0),
        //container 旋转
//          transform: Matrix4.rotationZ(20),

        //container 缩放
        transform: Matrix4.diagonal3Values(1.1, 1, 1),

        //内部元素位置
        alignment: Alignment.center,
      ),
    );
  }
}

//  Material 添加导航 修改背景颜色

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Material Demo',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}

class MaterialDemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//居中组件demo1
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //居中组件
    return Center(
      child: Text(
        '你好flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 40.0, color: Colors.yellow),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
