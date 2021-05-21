//"SELECT.DART"//

import 'package:flutter/material.dart';
//import 'package:project1/UI/home.dart';
import 'main.dart';
import 'video.dart';
import 'audio.dart';

function2() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.grey.shade900,
          leading:
              IconButton(icon: Icon(Icons.arrow_back), onPressed: function1),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.refresh), onPressed: function2),
          ],
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/videophoto.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Container(
                width: 350,
                height: 350,
                //color: Colors.amber,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.headset,
                          size: 120,
                          color: Colors.deepOrange,
                        ),
                        Container(
                          height: 60,
                          width: 100,
                          child: ElevatedButton(
                              //color: Colors.deepOrange,
                              child: Text('MUSIC'),
                              onPressed: function3),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.music_video,
                          size: 120,
                          color: Colors.purple,
                        ),
                        Container(
                          width: 100,
                          height: 60,
                          child: ElevatedButton(
                              //color: Colors.purple,
                              child: Text('VIDEO'),
                              onPressed: function4),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )));
}
