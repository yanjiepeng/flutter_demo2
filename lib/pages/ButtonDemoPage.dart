import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DemoButton'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 40,
        ),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: Text('RaisedButton'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('RaisedButton阴影'),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 10,
              ),
              SizedBox(
                width: 5,
              ),
              RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('增加（带图按钮）')),

              SizedBox(
                width: 5,
              ),

              //圆角按钮
              RaisedButton(
                onPressed: () {},
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('圆角按钮'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),

              //圆角按钮
              Container(
                  height: 80,
                  child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('圆形按钮'),
                      //水波纹颜色
                      splashColor: Colors.yellow,
                      shape: CircleBorder(
                        side: BorderSide(color: Colors.white),
                      ))),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 200,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    '按钮设置宽高',
                    style: TextStyle(fontSize: 16),
                  ),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                  child: Container(
                height: 40,
                margin: EdgeInsets.all(5),
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('自适应按钮'),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('扁平按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        child: Text('边框按钮'),
                        //配置背景颜色是没用的
//                    textColor: Colors.yellow,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.center,
                //按钮组
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text('BUtton1'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('BUtton2'),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: <Widget>[
              MyButton(
                text: '自定义按钮',
                height: 40,
                width: 100,
                pressed: () {
                  //点击事件
                  //自定义
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton(
      {this.text = '',
      // ignore: avoid_init_to_null
      this.pressed = null,
      this.width = 100,
      this.height = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        color: Colors.cyan,
        onPressed: this.pressed,
        child: Text('${this.text}'),
      ),
    );
  }
}
