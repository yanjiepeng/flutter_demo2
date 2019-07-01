import 'package:flutter/material.dart';


//加载asset图片
class AssetImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ClipOval(
        child: Image.asset(
          'images/hello.jpg',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
