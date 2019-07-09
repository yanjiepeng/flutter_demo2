import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title, content;

  _showTimer(context) {

    //定时器

    var timer;
    timer = Timer.periodic(Duration(milliseconds: 2500), (t) {
      print('执行');
      Navigator.pop(context);
      t.cancel(); //取消定时器
//      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {


    _showTimer(context);

    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text('${this.title}'),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity, // 等于外部容器宽度
                child: Text(
                  '${this.content}',
                  textAlign: TextAlign.left,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  MyDialog(this.title, this.content);
}
