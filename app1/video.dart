"VIDEO.DART"

import 'package:flutter/material.dart';
import 'package:project1/UI/select.dart';
import 'package:project1/UI/track1.dart';
import 'package:project1/UI/track2.dart';
import 'package:project1/UI/track3.dart';
import 'package:project1/UI/track4.dart';
import 'package:project1/UI/videotrack1.dart';
import 'package:project1/UI/videotrack2.dart';
import 'package:project1/UI/videotrack3.dart';
import 'home.dart';


function4() {
  var list1 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/thunderphoto.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Thunder',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        '2017',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: videotrack1);


  var div = Divider(color: Colors.red, indent: 15, endIndent: 15);


  var list2 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Believer.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Biliever',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        '2017',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: videotrack2);


  var div2 = Divider(color: Colors.red, indent: 15, endIndent: 15);


  var list3 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/assasinsphoto.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Assassins Creed Origins',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        '2019',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: videotrack3);


  var div3 = Divider(color: Colors.red, indent: 15, endIndent: 15);


  var background = Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          list1,
          div,
          list2,
          div2,
          list3,
          div3,
          //list4,
          //div4,
        ],
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/videophoto2.jpg'), fit: BoxFit.cover)));


  var myappbar = AppBar(
    title: Text('Video Library'),
    leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: function2),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.refresh), onPressed: function4),
      IconButton(icon: Icon(Icons.menu), onPressed: () => 'menu'),
    ],
    backgroundColor: Colors.grey.shade900,
  );
  var canvas1 = Scaffold(
    appBar: myappbar,
    body: background,
  );
  var Mapp2 = MaterialApp(
    home: canvas1,
    debugShowCheckedModeBanner: false,
  );
  runApp(Mapp2);
}
