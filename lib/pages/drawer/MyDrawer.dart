
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: DrawerHeader(
                  child: Text('Drawer Head'),
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562068712883&di=f3f635df98b62d5ebfd54c84efccb53a&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fphotoblog%2F8%2F1%2F9%2F6%2F8196944%2F20093%2F25%2F1237995499249_mthumb.jpg',
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.info_outline),
            ),
            title: Text('用户中心'),
            onTap: (){
              //隐藏侧边抽屉菜单
              Navigator.of(context).pop();

              Navigator.pushNamed(context,'/user');

            },

          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('setting'),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.settings),
            ),
            title: Text('setting'),
          ),
        ],
      ),
    );
  }
}
