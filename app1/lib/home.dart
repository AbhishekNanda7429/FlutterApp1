import 'package:Project_app/ui/music.dart';
import 'package:Project_app/ui/totalv.dart';
import 'package:flutter/material.dart';

class Base extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mybody = Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('assets/wp1.jfif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage('assets/icon1.jfif'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Music()));
                      },
                      child: new Text('MUSIC'),
                    ),
                  ],
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage('assets/icon2.jfif'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      margin: EdgeInsets.all(20),
                      width: 100,
                      height: 100,
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.grey.shade900,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => Total()));
                      },
                      child: new Text('VIDEO'),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 80,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Icon(Icons.account_circle),
          ],
          backgroundColor: Colors.black,
          title: Text('MEDIA',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white)),
          //backgroundColor: Colors.yellow,
        ),
        body: mybody,
      ),
    );
  }
}
