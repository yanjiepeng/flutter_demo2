import 'package:flutter/material.dart';
import 'package:flutter_demo2/localdata/Storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

//本地存储数据 sharedpreference

class LocalDataDemo extends StatefulWidget {
  @override
  _LocalDataDemoState createState() => _LocalDataDemoState();
}

class _LocalDataDemoState extends State<LocalDataDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferenceDemo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: _saveData,
              child: Text('保存数据'),
            ),
            RaisedButton(
              onPressed: _getData,
              child: Text('读取数据'),
            ),
            RaisedButton(
              onPressed: () {
                Storage.setString('name2', "李四");
              },
              child: Text('Storage保存数据'),
            ),
            RaisedButton(
              onPressed: () async {
                var str = await Storage.getString('name2');

                print(str);
              },
              child: Text('Storage保存数据读取数据'),
            ),
          ],
        ),
      ),
    );
  }

  _saveData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    sp.setString('username', 'zhang san');

    print('保存数据 张三');
  }

  _getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    var name = sp.getString('username');

    print('获取数据$name');
  }
}
