import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/components/button/button_welcome.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [ 
            SizedBox(height: MediaQuery.of(context).size.height / 3,),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            Text('Selamat Datang Di Padeprokan'),
            Spacer(),
            SizedBox(height: 20,),
            ButtonWelcome(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ButtonRegist(),
            ),
          ],
        ),
      ),
    );
  }
}