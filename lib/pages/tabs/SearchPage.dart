import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';

class SearchPage extends StatelessWidget {
  final arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('searchpage'),
      ),
      body: FloatingSearchBar.builder(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text(index.toString()),
            );
          },
          trailing: CircleAvatar(
            child: Text('SE'),
          ),
          drawer: Drawer(
            child: Container(),
          ),
          itemCount: 2,
      
          onChanged: (String value){
            //获取搜索框的值
          },
          decoration: InputDecoration.collapsed(hintText: 'Search...'),
      ),
    );
  }
}
