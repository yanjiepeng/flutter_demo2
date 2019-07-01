import 'package:flutter/material.dart';

import 'LayoutDemo1.dart';

//水平布局
class RowLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 600,
      height: 600,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //均匀分配空间
        crossAxisAlignment: CrossAxisAlignment.start, //在父布局的位置
        children: <Widget>[
          IconContainer(
            Icons.list,
            color: Colors.cyan,
          ),
          IconContainer(
            Icons.save,
            color: Colors.deepOrangeAccent,
          ),
          IconContainer(
            Icons.satellite,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}

//水平布局
class RowLayoutDemo233 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        width: 600,
        height: 600,
        color: Colors.grey,
        child: Row(children: <Widget>[
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.blue,
          ),
        ]));
  }
}
