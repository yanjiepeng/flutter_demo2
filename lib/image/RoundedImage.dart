

import 'package:flutter/material.dart';


//加载圆角/圆形图片
class RoundedImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(


      child: Container(

        width: 300,
        height: 300,

        decoration: BoxDecoration(
          color: Colors.yellow,
//          borderRadius: BorderRadius.all(
//            
//            Radius.circular(150)
//          ),

          borderRadius: BorderRadius.circular(150),
            image: DecorationImage(image:NetworkImage('https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2966689672,2398566088&fm=26&gp=0.jpg'),
              fit: BoxFit.cover
            )

        
        ),

      ),

    );
  }

}