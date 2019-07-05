import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormDemoX extends StatefulWidget {
  @override
  _FormDemoXState createState() => _FormDemoXState();
}

class _FormDemoXState extends State<FormDemoX> {
  var sex;
  String username;
  String info = '';

  List hobby = [
    {'checked': true, 'title': '唱'},
    {'checked': true, 'title': '跳'},
    {'checked': true, 'title': 'RAP'},
    {'checked': true, 'title': '篮球'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('信息登记系统'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(4, 10, 4, 10),
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 1,
              onChanged: (value) {
                setState(() {
                  this.username = value;
                });
              },
              decoration: InputDecoration(
                hintText: '请输入用户名',
                icon: Icon(Icons.people),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('男'),
                Radio(
                    value: 1,
                    groupValue: this.sex,
                    onChanged: (value) {
                      setState(() {
                        this.sex = value;
                      });
                    }),
                Text('女'),
                Radio(
                    value: 2,
                    groupValue: this.sex,
                    onChanged: (value) {
                      setState(() {
                        this.sex = value;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            //爱好
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: this._getHobby(),
            ),
            SizedBox(
              height: 20,
            ),

            TextField(
              maxLines: 4,
              decoration: InputDecoration(

                hintText: '备注',
                border: OutlineInputBorder()

              ) ,

              onChanged: (value){
                this.info = value;
              },

            ),


            SizedBox(
              height: 40,
            ),



            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg:
                          '姓名：${this.username} 性别：${this.sex == 1 ? '男' : '女'}  爱好：${this.hobby} 备注：${this.info}',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIos: 1,
                      backgroundColor: Colors.black,
                      textColor: Colors.white);
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('提交信息'),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (var i = 0; i < hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this.hobby[i]['title'] + ":"),
          Checkbox(
              value: this.hobby[i]['checked'],
              onChanged: (value) {
                setState(() {
                  this.hobby[i]['checked'] = value;
                });
              })
        ],
      ));
    }

    return tempList;
  }
}
