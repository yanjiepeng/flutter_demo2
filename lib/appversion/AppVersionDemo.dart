import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:open_file/open_file.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
class AppVersionDemo extends StatefulWidget {
  @override
  _AppVersionDemoState createState() => _AppVersionDemoState();
}

class _AppVersionDemoState extends State<AppVersionDemo> {

  @override
  void initState() {
    super.initState();

    this._getPackageInfo();
    this._getAppPath();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_downward),
        onPressed: _downLoad,
      ),
      appBar: AppBar(
        title: Text("app升级演示"),
      ),
      body: Text("app升级演示"),
    );
  }
  //弹出Dialog
  _showDialog() async{
    var alertRel=await showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("更新APP提示!"),
            content: Text("发现新的版本，新版本修复了如下bug 是否更新!"),
            actions: <Widget>[
              FlatButton(
                child: Text("否"),
                onPressed: (){
                  Navigator.pop(context,'Cancle');
                },
              ),
              FlatButton(
                child: Text("是"),
                onPressed: (){
                  Navigator.pop(context,'Ok');
                },
              )
            ],
          );
        }
    );

  }

  //获取版本号
  _getPackageInfo() async{
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String appName = packageInfo.appName;
    String packageName = packageInfo.packageName;
    String version = packageInfo.version;
    String buildNumber = packageInfo.buildNumber;


    print("appName:$appName");

    print("packageName:$packageName");

    print("version:$version");

    print("buildNumber:$buildNumber");

  }

  //获取路径
  _getAppPath() async{
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;

    Directory appDocDir = await getApplicationDocumentsDirectory();
    String appDocPath = appDocDir.path;

    var directory = await getExternalStorageDirectory();


    String storageDirectory=directory.path;


    print("tempPath:${tempPath}");

    print("appDocDir:${appDocPath}");

    print("StorageDirectory:${storageDirectory}");
  }


  //下载打开文件
  _downLoad() async {

    final directory = await getExternalStorageDirectory();
    String _localPath = directory.path;

    final taskId = await FlutterDownloader.enqueue(
      url: "http://www.ionic.wang/jdshop.apk",
      savedDir: _localPath,
      showNotification:
      true, // show download progress in status bar (for Android)
      openFileFromNotification:
      true, // click on notification to open downloaded file (for Android)
    );

    FlutterDownloader.registerCallback((id, status, progress) {

      //监听下载进度
      print('下载进度$status');
      // code to update your UI
      print('1111111');
      print(progress);
    });

    //打开文件
    OpenFile.open("${_localPath}/jdshop.apk");

  }
}
