import 'package:flutter/material.dart';

//通过绝对位置布局類似FrameLayout stack 堆
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AspectRatio(
        aspectRatio: 3.0 / 1.0,
        child: Container(
          color: Colors.red,

        ),
      );
  }
}
