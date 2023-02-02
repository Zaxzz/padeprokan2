import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:padeprokan/auth/register.dart';
import 'package:padeprokan/class.dart';
import 'package:padeprokan/components/button/button_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.5,
                  ),
                  SvgPicture.asset(
                    'assets/images/padeprokanmain.svg',
                    width: MediaQuery.of(context).size.width / 4,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: const [
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                  Text(
                    "Login And Start Manage Your Learning Process!",
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
                  ),
                  Text(
                    'Email *',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: const TextField(
                  controller: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'ex.haryadi69@mejik.id',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  ),
                  Text(
                    'Password *',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                // ignore: prefer_const_constructors
                child: TextField(
                  controller: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Input your password',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 70, vertical: 0)),
                    TextButton(
                        onPressed: (() {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ClassPage(),
                            ),
                          );
                        }),
                        child: const Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                              fontSize: 20, color: Colors.deepPurpleAccent),
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: ButtonLogin(),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  const Text(
                    "Don’t have an account yet?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ),
                        );
                      }),
                      child: const Text(
                        "Register here",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
