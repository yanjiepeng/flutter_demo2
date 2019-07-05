import 'package:flutter/material.dart';

class RightDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: UserAccountsDrawerHeader(
              accountName: Text('Yanjiepeng'),
              accountEmail: Text('Yan930806@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2995448805,466862910&fm=26&gp=0.jpg'),
              ),
              otherAccountsPictures: <Widget>[
                Image.network('https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3066549984,3716170461&fm=26&gp=0.jpg'),
                Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1715090804,3273997068&fm=26&gp=0.jpg'),
                Image.network('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1715090804,3273997068&fm=26&gp=0.jpg'),
              ],
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562069207488&di=e601815ee1523da54c9f1514afcce17c&imgtype=0&src=http%3A%2F%2Fm.iqiyipic.com%2Fu5%2Fimage%2F20140702%2F50%2Fed%2Fuv_3001333734_m_601_m2_180_101.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(

            ),
          )

        ],
      ),
    );
  }
}
