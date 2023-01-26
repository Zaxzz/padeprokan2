import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/components/button/button_regist.dart';
import 'package:padeprokan/components/button/button_welcome.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 50,),
                Center(
                  child: Image.asset('assets/images/logo.png',
                  width: MediaQuery.of(context).size.width / 1.5,),
                ),
                 SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Registration and start manage your learning process!',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
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
                    labelText: 'Email',
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
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              ButtonDaftar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}