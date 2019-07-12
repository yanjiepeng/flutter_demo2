import 'package:flutter/material.dart';
import 'package:device_info/device_info.dart';

class DeviceInfoPage extends StatefulWidget {
  @override
  _DeviceInfoPageState createState() => _DeviceInfoPageState();
}

class _DeviceInfoPageState extends State<DeviceInfoPage> {
  var _deviceModel = '';
  var _deviceBrand = '';
  var _deviceUUID = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('读取设备信息'),
      ),
      body: Column(
        children: <Widget>[

          Text('设备型号：${this._deviceModel}'),
          Text('设备品牌：${this._deviceBrand}'),
          Text('设备ID：${this._deviceUUID}'),

        ],
      )
    );
  }

  @override
  void initState() {
    super.initState();

    _getDeviceInfo();
  }

  void _getDeviceInfo() async {

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    // e.g. "Moto G (4)"
    print('${androidInfo.androidId}');

    setState(() {
      this._deviceModel = androidInfo.model;
      this._deviceBrand = androidInfo.board;
      this._deviceUUID = androidInfo.androidId;

    });
  }
}
