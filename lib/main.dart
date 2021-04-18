import 'package:aprenda_ingles/telas/Home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff795548),
          //accentColor: Colors.green
          scaffoldBackgroundColor: Color(0xfff5e9b9)),
    ));
