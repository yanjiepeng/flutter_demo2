import 'package:flutter/material.dart';
import 'package:flutter_demo2/res/listData.dart';

//cardview
class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('张三', style: TextStyle(fontSize: 18)),
                subtitle: Text('English'),
              ),
              ListTile(
                title: Text('电话:1325645131', style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text('地址:1325645131', style: TextStyle(fontSize: 18)),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('李四', style: TextStyle(fontSize: 18)),
                subtitle: Text('English'),
              ),
              ListTile(
                title: Text('电话:1325645131', style: TextStyle(fontSize: 18)),
              ),
              ListTile(
                title: Text('地址:1325645131', style: TextStyle(fontSize: 18)),
              )
            ],
          ),
        )
      ],
    );
  }
}

//带图卡片
class CardDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://imgs.aixifan.com/block_1561600808918-kuZiF76AfO?imageView2/1/w/508/h/260/q/100',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                //两种方式都加载圆形头像 circleAvatar专门用来加载头像
//                leading: ClipOval(
//                  child: Image.network('https://cdn.aixifan.com/dotnet/artemis/u/cms/www/201510/16102356dv1izugp.jpg',fit: BoxFit.cover ,width: 48, height: 48,),
//
//                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.aixifan.com/dotnet/artemis/u/cms/www/201510/16102356dv1izugp.jpg'),
                ),
                title: Text('xxxx'),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://imgs.aixifan.com/block_1561600808918-kuZiF76AfO?imageView2/1/w/508/h/260/q/100',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    'https://cdn.aixifan.com/dotnet/artemis/u/cms/www/201510/16102356dv1izugp.jpg',
                    fit: BoxFit.cover,
                    width: 48,
                    height: 48,
                  ),
                ),
                title: Text('xxxx'),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://imgs.aixifan.com/block_1561600808918-kuZiF76AfO?imageView2/1/w/508/h/260/q/100',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.aixifan.com/dotnet/artemis/u/cms/www/201510/16102356dv1izugp.jpg'),
                ),
                title: Text('xxxx'),
                subtitle: Text('xxxx'),
              )
            ],
          ),
        )
      ],
    );
  }
}

class CardDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData.map((value) {
        return Card(
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 21 / 9,
                child: Image.network(
                    'https://imgs.aixifan.com/FmwyiKnoTmc5x463bM073-RwrH8U'

                ,fit: BoxFit.cover,),
              ),
              ListTile(
                leading: CircleAvatar(
//                  child: Image.network(''),
                  backgroundImage: NetworkImage(value['imageUrl']),
                ),
                title: Text(value['title']),
                subtitle: Text(value['description'],maxLines: 2,),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}
