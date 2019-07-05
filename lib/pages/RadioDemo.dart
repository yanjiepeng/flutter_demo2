import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  var flag = true;

  var sex = 1;
  var sex2 = 1;
  var switch_flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                  value: this.flag,
                  onChanged: (v) {
                    setState(() {
                      this.flag = v;
                    });
                  })
            ],
          ),
          Row(
            children: <Widget>[Text(this.flag ? '选中' : '未选中')],
          ),
          SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            value: this.flag,
            selected:  this.flag,
            onChanged: (vl) {
              setState(() {
                this.flag = vl;
              });
            },
            title: Text('标题'),
            subtitle: Text('sub'),
          ),
          Divider(),
          CheckboxListTile(
            value: this.flag,
            selected:  this.flag,

            onChanged: (vl) {},
            title: Text('标题'),
            subtitle: Text('sub'),
            secondary: Icon(Icons.access_time),
          ),
          //radio是单选按钮组

          Row(
            children: <Widget>[
              Text('男'),
              Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  }),
              SizedBox(
                width: 20,
              ),
              Text('女'),
              Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (v) {
                    setState(() {
                      this.sex = v;
                    });
                  }),
            ],
          ),

          Row(
            children: <Widget>[Text('${this.sex == 1 ? '男' : '女'}')],
          ),

          Column(
            children: <Widget>[
              RadioListTile(
                  value: 1,
                  groupValue: this.sex2,
                  title: Text('title'),
                  subtitle: Text('sub'),
                  secondary: Icon(Icons.help),
                  selected: this.sex2 == 1,
                  onChanged: (val) {
                    setState(() {
                      this.sex2 = val;
                    });
                  }),
              RadioListTile(
                  value: 2,
                  groupValue: this.sex2,
                  title: Text('title'),
                  subtitle: Text('sub'),
                  secondary: Icon(Icons.help),
                  selected: this.sex2 == 2,

                  onChanged: (val) {
                    setState(() {
                      this.sex2 = val;
                    });
                  }),
              RadioListTile(
                  value: 3,
                  groupValue: this.sex2,
                  title: Text('title'),
                  subtitle: Text('sub'),
                  selected: this.sex2 == 3,

                  secondary: Image.network('https://i2.hdslb.com/bfs/face/84f5b57fd1c7d61843a28a6b0c9cfecec034843a.jpg@136w_136h.webp'),
                  onChanged: (val) {
                    setState(() {
                      this.sex2 = val;
                    });
                  }
                  )
            ],
          )
          
          ,
          
          Switch(value: this.switch_flag, onChanged: (val){

            setState(() {
              this.switch_flag = val;
            });

          })
        ],
      ),
    );
  }
}
