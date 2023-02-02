import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSendNavigation extends StatefulWidget {
  const BottomSendNavigation({super.key});

  @override
  State<BottomSendNavigation> createState() => _BottomSendNavigationState();
}

class _BottomSendNavigationState extends State<BottomSendNavigation>
    with SingleTickerProviderStateMixin {
  TextEditingController _SendMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: TextField(
                        cursorColor: Colors.black,
                        controller: _SendMessageController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type Here",
                          icon: Icon(
                            FontAwesomeIcons.faceSmileWink,
                            color: Colors.grey,
                            size: 20,
                          ),
                          suffixIcon: Icon(
                            FontAwesomeIcons.paperclip,
                            color: Colors.grey,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 12),
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Icon(
                      FontAwesomeIcons.microphone,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 7),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.purple,
                    ),
                    child: Icon(
                      FontAwesomeIcons.solidPaperPlane,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
