import 'dart:io';

import 'package:flutter/material.dart';

void main() {
 // imageLocal();
 //  triImage();
  appBarWidget();
}

void appBarWidget(){
  runApp(
    MaterialApp(
      title: "My App",
    home: Scaffold(
    appBar: AppBar(
      title: const Text("My Flutter App", textDirection: TextDirection.ltr,),
      backgroundColor: Colors.amberAccent,
    ),
      body: const Align(child: Text("Hello, Flutter", textDirection: TextDirection.ltr,),),
    )
    )
  );
}

void imageLocal(){
runApp(Column(
  children: <Widget>[
    Image.asset("assets/images/avatar.jpg"),
    Image(image:AssetImage('assets/images/avatar.jpg'))
  ],
));
}

void triImage(){
  runApp(Column(
    children: [
      Container(height: 200, child: Image.network("https://picsum.photos/200"),),
      Container(height: 200, child: Image.asset("assets/images/avatar.jpg"),),
      Container(height:200,child:Image.file(File("storage/emulated/0/Pictures/IMG_20220205_114138.jpg"))),
    ],
  ));
}