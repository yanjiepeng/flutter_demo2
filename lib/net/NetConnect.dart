import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class NetConnectDemo extends StatefulWidget {
  @override
  _NetConnectDemoState createState() => _NetConnectDemoState();
}

class _NetConnectDemoState extends State<NetConnectDemo> {
  var subscription;

  String _netState;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {

      if(result==ConnectivityResult.wifi){
        setState(() {
          _netState="处于wifi";
        });
      }else if(result==ConnectivityResult.mobile){
        setState(() {
          _netState="处于手机网络";
        });
      }else{
        setState(() {
          _netState="没有网络";
        });
      }
      // Got a new connectivity status!
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('监测网络变化'),
      ),
      body: Center(
        child: Text('${this._netState}'),
      ),
    );
  }

  @override
  dispose() {
    super.dispose();

    subscription.cancel();
  }
}
