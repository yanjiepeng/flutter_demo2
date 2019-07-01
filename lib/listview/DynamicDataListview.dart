import 'package:flutter/material.dart';



//通过list数据循环添加列表项
class DynamicDataListview extends StatelessWidget {

  //定义数据 模拟从服务器获取到的 _开头为私有方法

  List<Widget> _getData() {
    List<Widget> data = new List();
    for (var i = 0; i <= 10; i++) {
      data.add(ListTile(

        title: Text('这是列表项$i'),

      )
      );
    }

    //(xxx,xxx,xxx) = > list.toList(); //如果是前面的数据 要调用tolist()方法
    return data;
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}