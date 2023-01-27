import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:padeprokan/auth/register.dart';
import 'package:padeprokan/class.dart';
import 'package:padeprokan/components/button/button_login.dart';
import 'package:padeprokan/constant.dart';
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
      body: SafeArea(
<<<<<<< Updated upstream
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
=======
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 50)),
                  SvgPicture.asset(
                    'assets/images/logo.svg',
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 35),
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
                child: TextField(
                  controller: null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'ex.haryadi69@mejik.id',
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
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
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 70, vertical: 0)),
                    TextButton(
                        onPressed: (() {}),
                        child: Text(
                          "Forgot Your Password?",
                          style: TextStyle(
                              fontSize: 20, color: Colors.deepPurpleAccent),
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ButtonLogin(),
                ),
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
                  Text(
                    "Don’t have an account yet?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ClassPage(),
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
>>>>>>> Stashed changes
        ),
      ),
    );
  }
}
