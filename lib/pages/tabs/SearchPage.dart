import 'package:flutter/material.dart';


class SearchPage extends StatelessWidget {

  final arguments;


  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SeachPage'),
      ) ,
      body: Column(
        children: <Widget>[

          Text('我是搜索页面内容'),

          Text('搜索内容${this.arguments !=null ? arguments['id'] :'0'}')

        ],
      ),



    );
  }
}
