import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperDemo extends StatefulWidget {
  @override
  _SwipperDemoState createState() => _SwipperDemoState();
}

class _SwipperDemoState extends State<SwiperDemo> {
  List<String> _imgs = [
    "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1147732926,1924993478&fm=26&gp=0.jpg",
    'https://i0.hdslb.com/bfs/archive/312f124841321e336a44d3d541ac79a6c5120e5a.jpg@880w_440h.jpg',
    'https://i0.hdslb.com/bfs/archive/8e513cff86744e604088e237b32297879c9fdbf6.jpg@880w_440h.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('轮播图demo'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 260,
            width: double.infinity,
            child: Swiper(
              itemCount: 3,
              itemWidth: 300,
              layout: SwiperLayout.STACK,
              itemBuilder: (context, index) {
                return new Image.network(
                  this._imgs[index],
                  fit: BoxFit.cover,
                );
              },
              pagination: SwiperPagination(),
              control: SwiperControl(iconNext: null, iconPrevious: null),
            ),
          )
        ],
      ),
    );
  }
}
