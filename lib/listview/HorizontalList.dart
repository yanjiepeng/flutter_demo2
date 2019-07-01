import 'package:flutter/material.dart';


//横向listview
class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              //宽度可设置可不设置 竖向list默认宽度填充屏幕 横向list默认高度填充屏幕
              width: 180,
              height: 180,
              color: Colors.deepOrange,
              //横向list嵌套纵向list
              child: ListView(
                children: <Widget>[
                  Image.network('https://c2.hoopchina.com.cn/uploads/star/event/images/190628/019cc6df63cc836689b2d7df9662506b9d6e3a4c.jpg'),
                  Text('我是正文'),

                ],

              )
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.deepOrangeAccent,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.indigo,
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.indigoAccent,
            ),
          ],
        )
      );
  }
}
