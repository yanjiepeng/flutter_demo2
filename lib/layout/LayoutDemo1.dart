import 'package:flutter/material.dart';


//左右上下距离10的gridview
class LayoutDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            child: Image.network(
              'https://c2.hoopchina.com.cn/uploads/star/event/images/190628/019cc6df63cc836689b2d7df9662506b9d6e3a4c.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              'https://c1.hoopchina.com.cn/uploads/star/event/images/190628/4a1b108699b6f3e1ca0419d82a1a02e215c7b546.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              'https://c2.hoopchina.com.cn/uploads/star/event/images/190628/019cc6df63cc836689b2d7df9662506b9d6e3a4c.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              'https://c1.hoopchina.com.cn/uploads/star/event/images/190628/4a1b108699b6f3e1ca0419d82a1a02e215c7b546.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              'https://c2.hoopchina.com.cn/uploads/star/event/images/190628/019cc6df63cc836689b2d7df9662506b9d6e3a4c.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
          Padding(
            child: Image.network(
              'https://c1.hoopchina.com.cn/uploads/star/event/images/190628/4a1b108699b6f3e1ca0419d82a1a02e215c7b546.jpg',
              fit: BoxFit.cover,
            ),
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          ),
        ],
      ),
    );
  }
}


//水平布局
class IconContainer extends StatelessWidget{

  double size = 32.0;
  IconData icon;
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon,
        color: Colors.white,
          size: this.size,
        ),

      ),


    );
  }

  IconContainer(this.icon,{this.color,this.size}); //可选参数


}