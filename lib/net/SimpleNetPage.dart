import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SimpleNetPage extends StatefulWidget {
  @override
  _SimpleNetPageState createState() => _SimpleNetPageState();
}

class _SimpleNetPageState extends State<SimpleNetPage> {
  String _getMsgTitle;
  String _postMsgTitle;

  List list = [];

  @override
  void initState() {
    // TODO: implement initState

    Map userInfo = {'username': '张三', 'age': 20};

    //把MAP转换成JSON字符串
    var a = json.encode(userInfo);
    print(a);

    String userInfostr = '{"username":"张三" , "age":13    }';

    //把JSON字符串转换为MAP
    Map u = json.decode(userInfostr);

    print(u['username']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求和json解析'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _getData();
                },
                child: Text('使用http库get请求'),
              ),
              Text('${this._getMsgTitle}')
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  _postData();
                },
                child: Text('使用http库post请求'),
              ),
              Text('${this._postMsgTitle}')
            ],
          ),
          RaisedButton(
            onPressed: () {
              _getListData();
            },
            child: Text('渲染列表数据'),
          ),
          this.list.length > 0
              ? /*ListView(
                  shrinkWrap: true,
                  children: this.list.map((value) {
                    return ListTile(
                      leading: Image.network(value['image']),
                      title: Text(value['title']),
                      subtitle: Text(value['path']),
                    );
                  }).toList(),
                )*/

              ListView.builder(
                  shrinkWrap: true,  //if you do not set the shrinkWrap property, your ListView will be as big as its parent.If you set it to true, the list will wrap its content and be as big as it children allows it to be.
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.network(this.list[index]['image']),
                      title: Text(this.list[index]['title']),
                      subtitle: Text(this.list[index]['path']),
                    );
                  },
                  itemCount: this.list.length,
                )
              : Text('数据为空'),
        ],
      ),
    );
  }

  void _getData() async {
    var apiUrl = "https://api.apiopen.top/getSingleJoke?sid=28654780";

    var result = await http.get(apiUrl);

    if (result.statusCode == 200) {
      var res = json.decode(result.body);
      setState(() {
        this._getMsgTitle = res['result']['text'];
      });
    } else {
      print(result.statusCode);
    }
  }

  void _postData() async {
    var apiUrl = "https://api.apiopen.top/getWangYiNews";

    var result = await http.post(apiUrl, body: {'page': '1', 'count': '1'});

    if (result.statusCode == 200) {
      print(result.body);

      var res = json.decode(result.body);

      setState(() {
        this._postMsgTitle = res['result'][0]['title'];
      });
    } else {
      print(result.statusCode);
    }
  }

  Future _getListData() async {
    var apiUrl = "https://api.apiopen.top/getWangYiNews";

    var result = await http.post(apiUrl, body: {'page': '1', 'count': '5'});

    if (result.statusCode == 200) {
      //请求数据成功
      var rest = result.body;
      print(rest);

      setState(() {
        this.list = json.decode(rest)['result'];
      });
    } else {
      //
      print('请求数据失败${result.statusCode}');
    }
  }
}
