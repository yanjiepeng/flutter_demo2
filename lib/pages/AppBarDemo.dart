import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Appbar Demo"),
            //修改颜色和样式
            backgroundColor: Colors.pink,
            //左侧icon 会覆盖默认的返回按钮
//        leading: Icon(Icons.arrow_back),

//        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),

            //右侧按钮
            actions: <Widget>[
              IconButton(icon: Icon(Icons.menu), onPressed: () {}),
              IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
            ],

            //顶部TAB切换
            bottom: TabBar(tabs: <Widget>[

              Tab(text: '热门'),
              Tab(text: '推荐')

            ],),
          ),



          body: TabBarView(children: <Widget>[


            ListView(children: <Widget>[

              ListTile(title: Text('第一个tab'),),
              ListTile(title: Text('第一个tab'),),
              ListTile(title: Text('第一个tab'),),

            ],),    ListView(children: <Widget>[

              ListTile(title: Text('第er个tab'),),
              ListTile(title: Text('第er个tab'),),
              ListTile(title: Text('第er个tab'),),

            ],)



          ],),
        ));
  }
}
