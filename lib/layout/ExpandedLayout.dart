import 'package:flutter/material.dart';

import 'LayoutDemo1.dart';

//相当于android中的权重布局

//当flex都设置时 设置宽度无用
//AB两个 A不设置flex b设置1 则为A固定宽度 B自适应宽度


class ExpandedLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.list,
            color: Colors.cyan,
          ),
        ),
        Expanded(
            flex: 2,
            child: IconContainer(
              Icons.save,
              color: Colors.deepOrangeAccent,
            )),
        Expanded(
          flex: 1,
          child: IconContainer(
            Icons.satellite,
            color: Colors.yellow,
          ),
        )
      ],
    );
  }
}
