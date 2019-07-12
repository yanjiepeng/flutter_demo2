import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:dio/dio.dart';

class ImagePickerDemo extends StatefulWidget {
  @override
  _ImagePickerDemoState createState() => _ImagePickerDemoState();
}

class _ImagePickerDemoState extends State<ImagePickerDemo> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('拍照和相册demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _takePhoto,
                child: Text('拍照'),
              ),
              RaisedButton(
                onPressed: _fromAlbum,
                child: Text('相册选择'),
              ),
              RaisedButton(
                onPressed:(){
                  _uploadImageFile(this._image ,'http://jd.itying.com/imgupload');
                } ,
                child: Text('上传图片'),

              ),
              Text('上传接口为调试用可能失败'),
              _buildImage(),
            ],
          ),
        ));
  }

  _takePhoto() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.camera, maxWidth: 200, maxHeight: 200);

    setState(() {
      this._image = image;
    });
  }

  _fromAlbum() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.gallery, maxHeight: 250, maxWidth: 250);
    setState(() {
      this._image = image;
    });
  }

  //定义组件显示图片

  Widget _buildImage() {
    if (this._image == null)
      return Text('请选择图片');
    else {
      return Image.file(this._image);
    }
  }

  //上传图片到服务器

  void _uploadImageFile(File imagefile, String url) async {
    FormData formData = FormData.from({
      'name': '张三',
      'age': 23,
      'sex':'男',
      'file': new UploadFileInfo(imagefile, 'imageFile.jpg')
    });

    var response = await Dio().post(url, data: formData);
    print(response);
  }
}
