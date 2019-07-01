

import 'package:flutter/material.dart';

import 'LayoutDemo1.dart';


//垂直布局
class ColumnLayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      width: 600,
      height: 600,
      color: Colors.grey,
      child:  Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //均匀分配空间
        crossAxisAlignment: CrossAxisAlignment.center, //在父布局的位置
        children: <Widget>[

          IconContainer(Icons.list ,color: Colors.cyan,),
          IconContainer(Icons.save ,color: Colors.deepOrangeAccent,),
          IconContainer(Icons.satellite ,color: Colors.yellow,),

        ],
      ),
    );
  }

}