//"AUDIO.DART"//

import 'package:flutter/material.dart';
//import 'package:project1/UI/select.dart';
//import 'package:project1/UI/track1.dart';
//import 'package:project1/UI/track2.dart';
//import 'package:project1/UI/track3.dart';
//import 'package:project1/UI/track4.dart';
import 'home.dart';
import 'package:app1/select.dart';

function3() {
  var list1 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/oneD.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Story Of My Life',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        '2018',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: track1);

  var div = Divider(color: Colors.red, indent: 15, endIndent: 15);

  var list2 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sketchers.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Sketchers',
        style: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.italic,
          fontSize: 25,
        ),
      ),
      subtitle: Text(
        '2020',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: track2);

  var div2 = Divider(color: Colors.red, indent: 15, endIndent: 15);

  var list3 = ListTile(
      leading: Container(
          width: 70,
          height: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/stunningphoto.jpeg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle)),
      title: Text(
        'Stunning',
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
      onTap: track3);

  var div3 = Divider(color: Colors.red, indent: 15, endIndent: 15);

  var list4 = ListTile(
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
        '2019',
        style: TextStyle(color: Colors.white),
      ),
      isThreeLine: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      onTap: track4);

  var div4 = Divider(color: Colors.red, indent: 15, endIndent: 15);

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
          list4,
          div4,
        ],
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/futuristicphoto.jpg'),
              fit: BoxFit.cover)));

  var myappbar = AppBar(
    title: Text('Music Library'),
    leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: function2),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.refresh), onPressed: function3),
      IconButton(icon: Icon(Icons.menu), onPressed: () => 'menu'),
    ],
    backgroundColor: Colors.grey.shade900,
  );
  var canvas1 = Scaffold(
    appBar: myappbar,
    body: background,
  );
  // ignore: non_constant_identifier_names
  var Mapp2 = MaterialApp(
    home: canvas1,
    debugShowCheckedModeBanner: false,
  );
  runApp(Mapp2);
}
