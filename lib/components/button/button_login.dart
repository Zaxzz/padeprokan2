import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/auth/register.dart';
import 'package:padeprokan/home/home.dart';

class ButtonLogin extends StatefulWidget {
  const ButtonLogin({super.key});

  @override
  State<ButtonLogin> createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePadeprokan()),
            );
          }),
    );
  }
}
