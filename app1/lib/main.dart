import 'package:flutter/material.dart';
import 'select.dart';

function1(){
  var Mapp = (MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
       body: Container(
         child:Center(
           child:Container(
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Text("TwinkleBEE",style: TextStyle(color: Color.black, fontSize: 30),
                 ),
                 Container(
                   height: 300,
                   width: 200,
                   child: Image(image: AssetImage('assetName'))),
                   Container(
                     child: RaisedButton(
                       child: Text('login',style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                       ),
                       onPressed: finction2,
                       color: Colors.black,
                       )
                   )
               ],
             )
           ),
           ),
           ),
           ),
           )));
  runApp(Mapp);
  return Mapp;         

}
