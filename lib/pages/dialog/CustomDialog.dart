import 'package:flutter/material.dart';
import 'package:flutter_demo2/components/MyDialog.dart';

class CustomDialogPage extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义dialog演示页'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return MyDialog('关于','这是自定义对话框1');
                  });
            },
            child: Text('显示自定义对话框1'),
          )
        ],
      ),
    );
  }
}
