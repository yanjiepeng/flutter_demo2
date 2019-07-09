import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  //异步创建ALERTdialog
  _alertDialog() async {
    var result = await showDialog(
        barrierDismissible: false, //表示点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("提示信息!"),
            content: Text("您确定要删除吗?"),
            actions: <Widget>[
              FlatButton(
                child: Text("取消"),
                onPressed: () {
                  print("取消");
                  Navigator.pop(context, 'Cancle');
                },
              ),
              FlatButton(
                child: Text("确定"),
                onPressed: () {
                  print("确定");
                  Navigator.pop(context, "Ok");
                },
              )
            ],
          );
        });

    print(result);
  }

  _simpleDialog() async {
    var dialog = await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('选择'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('option1'),
                onPressed: () {
                  print('option1');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option2'),
                onPressed: () {
                  print('option2');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option3'),
                onPressed: () {
                  print('option3');
                },
              ),
              FlatButton(onPressed: () {}, child: Text('确定'))
            ],
          );
        });
    print(dialog);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 220,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('分享A'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('分享B'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('分享C'),
                  onTap: () {},
                ),
              ],
            ),
          );
        });

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Toast-Dialog Page',
          style: TextStyle(color: Colors.yellow, fontSize: 14),
        ),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '轻量级提示',
          ),
          SizedBox(
            height: 10,
          ),
          Tooltip(
            message: '显示提示内容',
            preferBelow: false,
            child: RaisedButton(
              onPressed: () {},
              child: Text('ToolTip提示(长按)'),
              color: Colors.red,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          new Builder(builder: (BuildContext context) {
            return new RaisedButton(
              onPressed: () {
                //值得注意的是这个context必须不能是Scaffold节点下的context,因为Scaffold.of（）
                // 方法需要从Widget树中去找到Scaffold的Context，所以如果直接在Scaffold中使用showSnackBar，
                // 需要在外城包括上Builder Widget，这个Builder不做任何的其他操作，只不过把Widget树往下移了一层而已。
                Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text("SanckBar is Showing "),
                  action: new SnackBarAction(
                      label: "撤销",
                      onPressed: () {
                        print("点击撤回---------------");
                      }),
                ));
              },
              child: new Text("SnackBar提示"),
              color: Colors.cyan,
              highlightColor: Colors.lightBlueAccent,
              disabledColor: Colors.lightBlueAccent,
            );
          }),
          Wrap(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SimpleDialog(
                          title: Text('选择'),
                          children: <Widget>[
                            SimpleDialogOption(
                              child: Text('option1'),
                              onPressed: () {},
                            ),
                            SimpleDialogOption(
                              child: Text('option1'),
                              onPressed: () {},
                            ),
                          ],
                        );
                      });
                },
                child: Text('simpleDialog'),
                color: Colors.blue,
                highlightColor: Colors.lightBlueAccent,
                disabledColor: Colors.lightBlueAccent,
              ),
              RaisedButton(
                onPressed: this._simpleDialog,
                child: Text('异步simpledialog'),
              )
            ],
          ),
          Wrap(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('标题'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[Text('内容1'), Text('内容2')],
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('确定')),
                            FlatButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('取消')),
                          ],
                        );
                      });
                },
                child: Text('AlertDialog'),
                color: Colors.blue,
                highlightColor: Colors.lightBlueAccent,
                disabledColor: Colors.lightBlueAccent,
              ),
              RaisedButton(
                child: Text('异步_alertDialog'),
                onPressed: _alertDialog,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: <Widget>[
              Builder(builder: (BuildContext context) {
                return RaisedButton(
                  child: Text('BottomSheet'),
                  onPressed: () {
                    showBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  ListTile(
                                    title: Text('title1'),
                                    leading: Icon(Icons.chat),
                                  ),
                                  ListTile(
                                    title: Text('title2'),
                                    leading: Icon(Icons.help),
                                  ),
                                  ListTile(
                                    title: Text('title3'),
                                    leading: Icon(Icons.search),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                );
              }),
              RaisedButton(
                onPressed: this._modelBottomSheet,
                child: Text('异步bottomsheet'),
              )
            ],
          ),
          Text(
              'showModalBottomSheet与BottomSheet的区别是 BottomSheet充满屏幕，ModalBottomSheet半屏'),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: '提示信息',
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIos: 10,
                  textColor: Colors.white,
                  backgroundColor: Colors.black);
            },
            child: Text('Toast'),
          )
        ],
      ),
    );
  }
}
