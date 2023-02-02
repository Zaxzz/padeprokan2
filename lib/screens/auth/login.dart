import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/constant.dart';
import 'package:padeprokan/components/button/button_login.dart';
import 'package:padeprokan/components/button/button_welcome.dart';
import 'package:padeprokan/screens/auth/forgotpassword.dart';
import 'package:padeprokan/screens/auth/register.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _fromkey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Image.asset(
                'assets/images/logo_splashscreen.png',
                width: MediaQuery.of(context).size.width / 4.5,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/images/padeprokan.png',
                width: MediaQuery.of(context).size.width / 3.5,
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Login and start manage your learning \nprocess!',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _fromkey,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: email,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple)),
                          hintText: 'Username',
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        obscureText: _isObscure,
                        controller: password,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.deepPurple)),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 254),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()),
                      );
                    },
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    )),
              ),
              ButtonLogin(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        "Register here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple),
                      ))
                ],
              ),
              Spacer(),
              // Padding(
              //   padding: const EdgeInsets.only(bottom: 20),
              //   child: SizedBox(
              //     width: MediaQuery.of(context).size.width,
              //     height: 50,
              //     child: ButtonLogin(),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
