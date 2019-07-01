import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {

  String title ;

  FormPage({this.title= 'FormPage'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).pop();
      },
      child: Icon(Icons.arrow_back),
      ),
      appBar: AppBar(
        title: Text('${this.title}'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('我是表单界面'),
          )
        ],
      ),
    );
  }
}
