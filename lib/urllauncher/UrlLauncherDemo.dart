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

              const url = 'http://www.qq.com';
              if(await canLaunch(url)){
                  await launch(url);
              }else{
                throw 'Could not launch $url';
              }

            },
            child: Text('浏览器打开url'),
          ),
          SizedBox(width: 10,),
          RaisedButton(
            onPressed: () async {

                var tel = 'tel:10086';
                 if(await canLaunch(tel)){
                  await launch(tel);
              }else{
                throw 'Could not launch $tel';
              }

            },
            child: Text('Call'),
          ),
          RaisedButton(
            onPressed: () async {

                var tel = 'sms:5550101234';
                 if(await canLaunch(tel)){
                  await launch(tel);
              }else{
                throw 'Could not launch $tel';
              }

            },
            child: Text('SMS'),
          ),
        ],
      ),
    );
  }
}
