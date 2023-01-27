import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:padeprokan/components/button/button_login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                ),
                Text(
                  'Full Name *',
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'eg.haryadi69',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                  ),
                  Text(
                    'Email *',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ex.haryadi69@mejik.id',
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Text(
                    'Password *',
                    style: TextStyle(fontSize: 20, color: Colors.black45),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Create your Password',
                ),
                keyboardType: TextInputType.text,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                ),
                Text(
                  'Confirm your Password *',
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: TextField(
                controller: null,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Confirm your password',
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ButtonLogin(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
