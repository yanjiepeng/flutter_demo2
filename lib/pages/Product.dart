import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {

  final  arguments;

  ProductPage({this.arguments});

  @override
  _ProductPageState createState() => _ProductPageState(arguments:this.arguments);
}

class _ProductPageState extends State<ProductPage> {

  var arguments;

  _ProductPageState({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('商品1'),
            subtitle:
            Text('商品传ID${this.arguments !=null ? arguments['id'] :'0'}'),
            onTap: (){

              Navigator.pushNamed(context, '/productInfo',arguments: {'pid':'12345'});


            },
          )
        ],
      ),
    );
  }
}
