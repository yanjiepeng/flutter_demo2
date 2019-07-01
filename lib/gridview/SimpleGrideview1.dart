import 'package:flutter/material.dart';
import 'package:flutter_demo2/res/listData.dart';

class SimpleGridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        children: <Widget>[
          Text('文本'),
          Text('文本'),
          Text('文本'),
          Text('文本'),
          Text('文本'),
          Text('文本'),
          Text('文本'),
          Text('文本'),
        ],

        crossAxisCount: 3 //控制列

    );
  }

}

//循环遍历container

class SimpleGridview2 extends StatelessWidget {


  List<Widget> _getGridData() {
    List<Widget> list = new List();
    for (var i = 0; i <= 12; i ++) {
      list.add(Container(
        alignment: Alignment.center,
        child: Text('這是第$i條數據',
            style: TextStyle(fontSize: 18, color: Colors.red),

      ),
        color: Colors.cyan,

      ));

  }
    return list;

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        padding: EdgeInsets.all(10),
        children: this._getGridData(),

        //左右上下間距
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        crossAxisCount: 2 ,//控制列
       childAspectRatio: 0.7, // 调整宽/高比例 无法用height属性调整item的高度

    );
  }




}



//将json数据布局到GridView
class SimpleGridview3 extends StatelessWidget {


  List<Widget> _getGridData() {

    var tempList = listData.map((item) {

      return Container(


        child: Column(
          //把数据竖直排列 不平铺 相当于linerlayout
          children: <Widget>[

            Image.network(item['imageUrl']),
            SizedBox(height: 10,),
            Text(item['title'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20
              ),
            ),


          ],



        ),

      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color.fromRGBO(233, 233, 233, 0.8)
        )

      ),
      );

    });

    return tempList.toList();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: EdgeInsets.all(10),
      children: this._getGridData(),

      //左右上下間距
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      crossAxisCount: 2,
      //控制列
//      childAspectRatio: 0.7, // 调整宽/高比例 无法用height属性调整item的高度

    );
  }
}