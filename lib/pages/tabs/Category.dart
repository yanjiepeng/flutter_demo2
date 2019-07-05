import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Expanded(
                  child: TabBar(
                    isScrollable: true,  //是否顶部菜单水平滑动
                    indicatorColor: Colors.cyan,
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: <Widget>[
                      Tab(
                        text: '热销',
                      ),
                      Tab(
                        text: '推荐',
                      ),
                      Tab(
                        text: '推荐',
                      ),
                      Tab(
                        text: '推荐',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                  ListTile(
                    title: Text('第一个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                  ListTile(
                    title: Text('第二个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                  ListTile(
                    title: Text('第三个tab'),
                  ),
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第4个tab'),
                  ),
                  ListTile(
                    title: Text('第4个tab'),
                  ),
                  ListTile(
                    title: Text('第4个tab'),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
