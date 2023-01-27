import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:padeprokan/components/button/appbar_widget.dart';

void main() => runApp(const ClassPage());

class ClassPage extends StatelessWidget {
  const ClassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppbarWidget(), body: Container());
  }
}
