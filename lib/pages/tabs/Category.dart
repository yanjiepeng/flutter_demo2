import 'package:flutter/material.dart';

import '../FormPage.dart';
import 'SearchPage.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
      RaisedButton(onPressed: (){

        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FormPage()));



      },
      child: Text('跳转到表单界面'),
        textTheme: ButtonTextTheme.primary,
        color: Theme.of(context).primaryColor,

      )


      ],
    );
  }
}