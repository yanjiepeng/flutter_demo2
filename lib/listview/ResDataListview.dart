import 'package:flutter/material.dart';

import 'package:flutter_demo2/res/listData.dart';

//通过res内的json数据 添加列表
class ResDataListview extends StatelessWidget {

  //定义数据 模拟从服务器获取到的 _开头为私有方法

  List<Widget> _getData() {
    
    var tempList = listData.map((value){
      return ListTile(
        
        title: Text(value['title']),
        leading: Image.network(value['imageUrl']),
        subtitle: Text(value['author']),
        
      );
    });
    
    return tempList.toList();
  }





  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
      
    );
  }
}