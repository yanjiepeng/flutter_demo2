import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

class DioDemoPage extends StatefulWidget {
  @override
  _DioDemoPageState createState() => _DioDemoPageState();
}

class _DioDemoPageState extends State<DioDemoPage> {
  List _list = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dio库Demo'),
        ),
        body: this._list.length > 0
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.network(this._list[index]['image']),
                    title: Text(this._list[index]['title']),
                    subtitle: Text(this._list[index]['path']),
                  );
                },
                itemCount: this._list.length,
              )
            : Center(
                child: Text('暂无数据'),
              ));
  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  void getData() async {
    var dio = Dio();
    var apiUrl = "https://api.apiopen.top/getWangYiNews";

    Response response =
        await dio.post(apiUrl, data: {'page': '1', 'count': '4'});


    print(response.data);
    setState(() {
      this._list = response.data['result'];
    });
  }
}
