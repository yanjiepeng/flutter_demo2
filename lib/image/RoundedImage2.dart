

import 'package:flutter/material.dart';


//加载圆角/圆形图片
class RoundedImage2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

      //clipoval自动处理为椭圆
      child:ClipOval(
        child: Image.network("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562231512&di=47463117eb9f32af0115f09458b690f3&imgtype=jpg&er=1&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201704%2F20%2F232300m9i9wa2h6a9h9069.jpg",
        width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        
      )

    );
  }

}