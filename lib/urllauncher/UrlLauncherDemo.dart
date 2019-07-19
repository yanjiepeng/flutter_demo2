import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherDemo extends StatefulWidget {
  @override
  _UrlLauncherDemoState createState() => _UrlLauncherDemoState();
}

class _UrlLauncherDemoState extends State<UrlLauncherDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('url打开外部应用')),
      body: Row(
        children: <Widget>[
          RaisedButton(
            onPressed: ()async {

              const url = 'www.qq.com';
              if(await canLaunch(url)){

              }else{
                throw 'Could not launch $url';
              }


            },
            child: Text('浏览器打开url'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('浏览器打开url'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('浏览器打开url'),
          ),
        ],
      ),
    );
  }
}
