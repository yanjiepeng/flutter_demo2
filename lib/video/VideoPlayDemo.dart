import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoPlayDemo extends StatefulWidget {
  @override
  _VideoPlayDemoState createState() => _VideoPlayDemoState();
}

class _VideoPlayDemoState extends State<VideoPlayDemo> {



  VideoPlayerController videoPlayerController ;

  ChewieController chewieController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    videoPlayerController = VideoPlayerController.network('http://vfx.mtime.cn/Video/2019/03/18/mp4/190318231014076505.mp4');

    chewieController = ChewieController(

      videoPlayerController: videoPlayerController,
      aspectRatio: 3/2,
      autoPlay: true,
      looping: true,

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('在线视频播放'),

      ),

      body: Center(

        child: Chewie(

          controller: chewieController,

        ),

      ),




    );
  }

  @override
  void dispose() {
    // TODO: implement dispose

    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();

  }
}
