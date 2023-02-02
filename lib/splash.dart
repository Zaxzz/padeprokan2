import 'dart:async';

import 'package:flutter/material.dart';
import 'package:padeprokan/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          // heightFactor: ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo_splashscreen.png',
                width: MediaQuery.of(context).size.width / 3,
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/padeprokan.png',
                width: MediaQuery.of(context).size.width / 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
