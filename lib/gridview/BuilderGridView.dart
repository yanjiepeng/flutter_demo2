import 'package:flutter/material.dart';
import 'package:flutter_demo2/res/listData.dart';

class GridViewByBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: listData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //配置列数和间距
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: this._getListItem);
  }

  Widget _getListItem(context, index) {
    return Container(
      child: Column(
        //把数据竖直排列 不平铺 相当于linerlayout
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(
            height: 10,
          ),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: Color.fromRGBO(233, 233, 233, 0.8))),
    );
  }
}
