import 'package:flutter/material.dart';

//通过绝对位置布局類似FrameLayout stack 堆
class StackLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Stack(
          alignment: Alignment.bottomLeft,
          //配置里面text在外容器center的位置 配置一个子组件 若多个组件会处于相同位置
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
            Text('我是文本')
          ],
        ));
  }
}

//通过绝对位置布局類似FrameLayout stack 堆
class StackLayoutDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Stack(
          alignment: Alignment(0, -1), //配置Alignment
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              color: Colors.blue,
            ),
            Text('我是文本')
          ],
        ));
  }
}

//通过绝对位置布局類似FrameLayout stack 结合 align
class StackLayoutDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.white,
                  )),
              Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.save,
                  size: 40,
                  color: Colors.red,
                ),
              ),
              Align(
                alignment: Alignment(0.5, 0.5),
                child: Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ));
  }
}


//通过绝对位置布局類似FrameLayout stack 结合 Positioned
class StackLayoutDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              Positioned(
                  left: 10,
                  top: 0,
                  child: Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.white,
                  )),
              Positioned(
                left: 40,
                top: 0,
                child: Icon(
                  Icons.save,
                  size: 40,
                  color: Colors.red,
                ),
              ),
              Positioned(
                right: 40,
                bottom: 5,
                child: Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ));
  }
}


class StackLayoutDemo5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          height: 400,
          width: 300,
          color: Colors.blue,

          child: Stack(
            children: <Widget>[

            Container(
            height: 400,
            width: 300,
            child: Image.network(
              'https://img.tapimg.com/market/lcs/2ea1a63c45fe294d36e29e348d441ea3_360.png?imageMogr2/auto-orient/strip',
              fit: BoxFit.cover,),

          ),

          Align(
            alignment: Alignment(0,1),
            child: Text('Dart Flutter教程_Dart Flutter入门实战视频教程',
              style: TextStyle(color: Colors.white),
            )),
            ],
          ),
        ));
  }
}
