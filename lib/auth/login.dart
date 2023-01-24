import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/components/button/button_login.dart';
import 'package:padeprokan/components/button/button_welcome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        elevation: 0,
        backgroundColor: Colors.white,
        
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Center(
                child: Image.asset('assets/images/logo_splashscreen.png',
                width: MediaQuery.of(context).size.width / 3,),
              ),
              Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
              Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            ButtonLogin(),
            ],
          ),
        ),
      ),
    );
  }
}