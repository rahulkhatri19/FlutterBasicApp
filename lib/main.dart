import 'dart:io';

import 'package:flutter/material.dart';

void main() {
 // imageLocal();
 //  triImage();
  appBarWidget();
}
class DrawerWidget extends StatelessWidget{
  var itemMap = {
    {'icon': Icons.person, 'title':"My Profile"},
    {'icon': Icons.table_view, 'title': "Statistics"},
    {'icon': Icons.settings, 'title': "Settings"}
  };
   @override
  Widget build(BuildContext context){
     return Drawer(
       child: ListView(
         children: [
           DrawerHeader(child: Container(color: Colors.blue,)),
           for(var item in itemMap)
             ListTile(leading: Icon(item['icon'] as IconData), title: Text(item['title'] as String),)
         ],
       ),
     );
   }
}
void appBarWidget(){
  runApp(
    MaterialApp(
      title: "My App",
    home: Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      actions: [
        Icon(Icons.email),
        Icon(Icons.more_vert)
      ],
      title: const Text("My Flutter App", textDirection: TextDirection.ltr),
      backgroundColor: Colors.amberAccent,
    ),
      drawer: DrawerWidget(),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       Container(height: 40,),
      //       Row(children: [
      //         Icon(Icons.person),
      //         Text("Profile")
      //       ],),
      //       Row(children: [
      //         Icon(Icons.table_chart),
      //         Text("Statistics"),
      //       ],),
      //       Row(
      //         children: [
      //           Icon(Icons.settings),
      //           Text("Settings")
      //         ],
      //       )
      //     ],
      //   ),
      // ),
      body: const Align(child: Text("Hello, Flutter App"),),
    )
    )
  );
}
//  Profile face icon
//  Statistic table icon
//   Settings gear icon
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