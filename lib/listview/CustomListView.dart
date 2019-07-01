import 'package:flutter/material.dart';



//图文自定
class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(

      padding: EdgeInsets.all(10),
      children: <Widget>[


        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),
        Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Text('我是标题',
            textAlign: TextAlign.center,
            style: TextStyle(

              fontSize: 24,


            ),
          ),
          height: 60,


        ),
        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),
        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),
        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),
        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),
        Image.network(
            'https://c2.hoopchina.com.cn/uploads/star/event/images/190627/1e43366ccd6a3f78ec6e74722c9f5b3457e23bb5.jpg'),


      ],

    );
  }
}