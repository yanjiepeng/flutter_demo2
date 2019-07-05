
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


//底部导航带中心圆形组件
class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('仿咸鱼底部菜单'),


      ),

      floatingActionButton: FloatingActionButton(onPressed: (){},

        child: Icon(Icons.add, color: Colors.black, size: 36,),

        backgroundColor: Colors.yellow,

      ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}
