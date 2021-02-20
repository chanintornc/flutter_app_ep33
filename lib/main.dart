import 'package:flutter/material.dart';
import 'package:flutterappep3/views/home_ui.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeUI(),
      theme: ThemeData(
        //primaryColor: Colors.deepOrange
          primaryColor: Color(0xFFFF6961)
      ),
    ),
  );
}