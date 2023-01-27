import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePadeprokan extends StatefulWidget {
  const HomePadeprokan({super.key});

  @override
  State<HomePadeprokan> createState() => _HomePadeprokanState();
}

class _HomePadeprokanState extends State<HomePadeprokan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}