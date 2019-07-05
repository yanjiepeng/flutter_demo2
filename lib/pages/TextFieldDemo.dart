import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  //TextField初始赋值
  var _userName = new TextEditingController();
  //如果只是为了获取文本框的值只需要定义个String存贮即可

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _userName.text = '初始值111';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('表单演示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 4, //支持4行输入
              decoration: InputDecoration(
                  hintText: '请输入搜索内容',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: '密码框',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0))),

                  //设置类似inputLayout文本上浮效果
                  labelText: '密码'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.people),
                  hintText: '请输入用户名',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(3.0))),

                  //设置类似inputLayout文本上浮效果
                  labelText: '密码'),
            ),

            //获取表单的值

            SizedBox(
              height: 10,
            ),

            TextField(
              decoration: InputDecoration(
                hintText: '演示赋值',
              ),
              controller: this._userName,
              onChanged: (val){
                setState(() {
                  this._userName.text = val;

                });
              },
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              width: double.infinity,
              child: RaisedButton(
                onPressed: () {
                  //获取textFiled的值
                  print(this._userName.text);
                  Fluttertoast.showToast(msg: this._userName.text ,
                  toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIos: 1,
                    backgroundColor: Colors.black,
                    textColor: Colors.white
                  );

                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('登录'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
