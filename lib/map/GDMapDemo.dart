import 'package:flutter/material.dart';

import 'package:amap_location/amap_location.dart';
import 'package:simple_permissions/simple_permissions.dart';

class GDMapDemo extends StatefulWidget {
  @override
  _GDMapDemoState createState() => _GDMapDemoState();
}

class _GDMapDemoState extends State<GDMapDemo> {
  double _longitude = 0;
  double _latitude = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkPersmission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('高德地图定位'),
        ),
        body: Column(
          children: <Widget>[
            Text("经度:${this._longitude}"),
            Text("纬度:${this._latitude}"),
          ],
        ));
  }

  void getLocation() async {
    //启动一下
    await AMapLocationClient.startup(new AMapLocationOption(
        desiredAccuracy: CLLocationAccuracy.kCLLocationAccuracyHundredMeters));
    //获取地理位置
    var result = await AMapLocationClient.getLocation(true);

    print("经度:${result.longitude}");

    print("纬度:${result.latitude}");

    setState(() {
      this._longitude = result.longitude;
      this._latitude = result.latitude;
    });
  }

  void _checkPersmission() async {
    bool hasPermission =
        await SimplePermissions.checkPermission(Permission.WhenInUseLocation);
    print('hasPermission :$hasPermission');

    if (!hasPermission) {
      PermissionStatus requestPermissionResult =
          await SimplePermissions.requestPermission(
              Permission.WhenInUseLocation);
      if (requestPermissionResult == PermissionStatus.denied) {
        print('申请定位失败');
        return;
      }else{
        print('申请定位成功');
      }
    }
    AMapLocationClient.onLocationUpate.listen((AMapLocation loc) {
      if (!mounted) return;
      setState(() {
        AMapLocationClient.onLocationUpate.listen((AMapLocation loc) {
          if (!mounted) return;
          setState(() {
            this._latitude = loc.latitude;
            this._longitude = loc.longitude;
          });
        });

        AMapLocationClient.startLocation();
      });
    });

    AMapLocationClient.startLocation();
  }

  @override
  void dispose() {
    AMapLocationClient.stopLocation();

    AMapLocationClient.shutdown();
    super.dispose();
  }
}
