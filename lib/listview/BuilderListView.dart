import 'package:flutter/material.dart';



//通过builder来定义listview的数据

class BuilderListView extends StatelessWidget {

  List list = new List();

  BuilderListView(){
    for (var i = 0 ; i <= 10 ;i++){
      list.add('Title$i');

    }

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: this.list.length ,
        itemBuilder:(context , index){

          return ListTile(
            title: Text(this.list[index]),
          );

        });
  }




}