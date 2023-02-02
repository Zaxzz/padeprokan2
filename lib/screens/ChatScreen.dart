import 'package:flutter/material.dart';
import 'package:padeprokan/components/button/bottom_send_navigation.dart';
import 'package:padeprokan/screens/messageBox.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("CHAT"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(0.6),
            // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications,
                size: 26.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.person_rounded),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          color: Colors.blue.withOpacity(0.1),
          child: ListView(
              // children: List.generate(
              //   message.length,
              //   (index) {
              //     return MessageBox(message: 'halo', isMe: true)
              //   },
              // ),
              ),
        ),
      ),
      bottomSheet: BottomSendNavigation(),
    );
  }
}
