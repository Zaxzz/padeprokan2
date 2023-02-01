import 'dart:async';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:padeprokan/constant.dart';
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
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => (const LoginPage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: scaffoldcolor,
      child: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
          width: MediaQuery.of(context).size.width / 2,
        ),
      ),
    );
  }
}
