"VIDEOTRACK2.DART"

import 'package:project1/UI/video.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}


class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;


  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter7429.s3.ap-south-1.amazonaws.com/believer.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Video Demo',
      home: Scaffold(
        body: Center(
          child: _controller.value.initialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}


videotrack2() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text('Believer'),
          backgroundColor: Colors.grey.shade900,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: videotrack2),
            IconButton(icon: Icon(Icons.file_download), onPressed: videotrack2),
          ],
          leading:
              IconButton(icon: Icon(Icons.arrow_back), onPressed: function4),
        ),
        body: Center(child: VideoApp())),
  ));
}
