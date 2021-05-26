"TRACK1.DART"

import 'package:project1/UI/audio.dart';
import 'package:project1/UI/video.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


track1() {
  var playIcon = Icon(Icons.play_circle_outline);
  var pauseIcon = Icon(Icons.pause_circle_outline);
  var a = AudioPlayer();
  var p = AudioCache(fixedPlayer: a);


  var playButton = RaisedButton(
    onPressed: () => p.play('Story Of My Life.mp3'),
    child: playIcon,
  );
  var pauseButton = RaisedButton(
    onPressed: () => a.pause(),
    child: pauseIcon,
  );
  var trackphoto = Container(
      alignment: Alignment.center,
      width: 350,
      height: 350,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/oneD.jpg'),
        fit: BoxFit.fill,
      )));


  var clmn = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      trackphoto,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          playButton,
          pauseButton,
        ],
      ),
    ],
  );
  var clmn2 = Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/others.jpg'), fit: BoxFit.cover)),
    child: clmn,
    height: double.infinity,
    width: double.infinity,
    alignment: Alignment.bottomCenter,
  );


  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: Text('Music'),
          backgroundColor: Colors.grey.shade900,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: track1),
            IconButton(icon: Icon(Icons.file_download), onPressed: track1),
          ],
          leading:
              IconButton(icon: Icon(Icons.arrow_back), onPressed: function3),
        ),
        body: Center(child: clmn2)),
  ));
}

