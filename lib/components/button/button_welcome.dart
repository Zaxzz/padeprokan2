import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/constant.dart';
import 'package:padeprokan/screens/auth/login.dart';
import 'package:padeprokan/screens/auth/register.dart';
import 'package:padeprokan/auth/login.dart';
import 'package:padeprokan/auth/register.dart';
import 'package:padeprokan/welcome.dart';

class ButtonWelcome extends StatefulWidget {
  const ButtonWelcome({super.key});

  @override
  State<ButtonWelcome> createState() => _ButtonWelcomeState();
}

class _ButtonWelcomeState extends State<ButtonWelcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LoginPage()),
                // );
              },
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                backgroundColor: kuningColor,
              ),
            )),
      ),
    );
  }
}

class ButtonRegist extends StatefulWidget {
  const ButtonRegist({super.key});

  @override
  State<ButtonRegist> createState() => _ButtonRegistState();
}

class _ButtonRegistState extends State<ButtonRegist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => LoginPage()),
          // );
        },
        child: Text('Daftar'),
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
