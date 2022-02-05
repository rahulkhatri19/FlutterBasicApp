import 'package:flutter/material.dart';

void main() {
  imageLocal();
}

void imageLocal(){
runApp(Column(
  children: <Widget>[
    Image.asset("assets/images/avatar.jpg"),
    AssetImage('assets/images/avatar.jpg')
  ],
));
}

