import 'dart:async';
import 'package:flutter/material.dart';
import 'package:padeprokan/constant.dart';
import 'package:padeprokan/splash.dart';
import 'package:padeprokan/constant.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Padeprokan',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Color.fromRGBO(219, 223, 247, 1),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
