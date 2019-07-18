

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class QrScanCode extends StatefulWidget {
  @override
  _QrScanCodeState createState() => _QrScanCodeState();
}

class _QrScanCodeState extends State<QrScanCode> {

  String barcode;

  Future _scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() {
        return this.barcode = barcode;
      });
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          return this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() {
          return this.barcode = 'Unknown error: $e';
        });
      }
    } on FormatException {
      setState(() => this.barcode =
      'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('扫描二维码'),

        
      ),

      
      floatingActionButton: FloatingActionButton(onPressed: _scan,
      child: Icon(Icons.photo_camera),
      ),

      body: Center(


        child: Text('${this.barcode}'),



      ),

    );
  }
}
