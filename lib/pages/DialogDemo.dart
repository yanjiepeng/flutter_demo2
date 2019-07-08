import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
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
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('标题'),
                      content: SingleChildScrollView(
                        child: ListBody(

                          children: <Widget>[

                            Text('内容1'),
                            Text('内容2')

                          ],


                        ),
                      ),

                      actions: <Widget>[

                        FlatButton(onPressed: (){

                          Navigator.of(context).pop();

                        }, child: Text('确定')),

                        FlatButton(onPressed: (){

                          Navigator.of(context).pop();

                        }, child: Text('取消')),
                      ],


                    );
                  });
            },
            child: Text('AlertDialog'),
            color: Colors.blue,
            highlightColor: Colors.lightBlueAccent,
            disabledColor: Colors.lightBlueAccent,
          ),
        ],
      ),
    );
  }
}
