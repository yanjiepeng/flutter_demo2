import 'package:flutter/material.dart';
import 'package:flutter_demo2/pages/drawer/MyDrawer.dart';
import 'drawer/RightDrawer.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final int index;

  Tabs({this.index = 0, Key key}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(int index) {
    this._currentIndex = index;
  }

  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),

      floatingActionButton: Container(
        height: 64,
        width: 64,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,

        ),

        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });

          },
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 32,
          ),
          backgroundColor: this._currentIndex == 1? Colors.blue :Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //添加抽屉APPBAR会默认出现菜单按钮
      drawer: MyDrawer(),
      endDrawer: RightDrawer(),
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0,
        //icon的大小
        fixedColor: Colors.red,
        //选中的颜色
        type: BottomNavigationBarType.fixed,
        //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}
