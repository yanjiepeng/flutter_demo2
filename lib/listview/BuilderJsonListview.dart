import 'package:flutter/material.dart';

import 'package:flutter_demo2/res/listData.dart';
//通过builder映射res里的json数据
class BuilderJsonListview extends StatelessWidget{

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



  Widget _getListItem(context , index) {

    return ListTile(

      title: Text(listData[index]['title']),
      leading: Image.network(listData[index]['imageUrl']),
      subtitle: Text(listData[index]['author']),


    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount:this._getData().length ,
        itemBuilder: (context,index){
//            return _getData()[index];
            return _getListItem(context , index);
        });
  }

}