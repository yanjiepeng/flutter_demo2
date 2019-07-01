import 'package:flutter/material.dart';

//流布局
class WrapLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Wrap(
      spacing: 10,
      runSpacing: 10,
//      alignment: WrapAlignment.spaceEvenly,
      children: <Widget>[
        MyButton("show艺篇"),
        MyButton("是大腿是大腿是大腿"),
        MyButton("主播"),
        MyButton("主播真会玩"),
        MyButton("起风了"),
        MyButton("音乐音乐音乐"),
        MyButton("翻唱是大腿"),
        MyButton("邮箱"),
        MyButton("不定时更新")
      ],
    );
  }
}

//流布局
class WrapLayout2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 400,
        width: 260,
        color: Colors.pink,
        child: Wrap(
          direction: Axis.vertical, //排列方式 横向纵向1
          spacing: 10,
          runSpacing: 10,
          runAlignment: WrapAlignment.spaceAround, //y轴间距
//      alignment: WrapAlignment.spaceEvenly,
          children: <Widget>[
            MyButton("show艺篇"),
            MyButton("是大腿是大腿是大腿"),
            MyButton("主播"),
            MyButton("主播真会玩"),
            MyButton("起风了"),
            MyButton("音乐音乐音乐"),
            MyButton("翻唱是大腿"),
            MyButton("邮箱"),
            MyButton("不定时更新")
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
        child: Text(text), textColor: Colors.white, onPressed: null);
  }
}
