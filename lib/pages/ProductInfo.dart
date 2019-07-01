import 'package:flutter/material.dart';


class ProductInfo extends StatefulWidget {
  final arguments;


  ProductInfo({this.arguments});

  @override
  _ProductInfoState createState() => _ProductInfoState(arguments:this.arguments);
}

class _ProductInfoState extends State<ProductInfo> {

  var arguments;

  _ProductInfoState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品详情')),
      body: Container(
        child: Text('这是商品详情${arguments['pid']}'),
        
      ),
      
    );
  }
}
