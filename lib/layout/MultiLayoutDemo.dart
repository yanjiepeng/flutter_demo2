import 'package:flutter/material.dart';

import 'LayoutDemo1.dart';

//混合布局
class MultiLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 180,
                color: Colors.black,
                child: Text(
                  "你好flutter",
                  textAlign: TextAlign.center,

                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),

        SizedBox(height: 10,),
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                  'https://imgs.aixifan.com/block_1559805692197-wlx6eGoiKL?imageView2/1/w/520/h/256',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://imgs.aixifan.com/block_1559805692197-wlx6eGoiKL?imageView2/1/w/520/h/256',
                              fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 85,
                          child: Image.network(
                              'https://imgs.aixifan.com/block_1559805692197-wlx6eGoiKL?imageView2/1/w/520/h/256',
                              fit: BoxFit.cover),
                        )
                      ],
                    ))),
          ],
        )
      ],
    );
  }
}
