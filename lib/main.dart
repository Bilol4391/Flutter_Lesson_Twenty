import 'package:flutter/material.dart';
import 'package:flutter_twenty_lesson/LoginPage.dart';

void main() {
  runApp(const Mainfile());
}

class Mainfile extends StatelessWidget {
  const Mainfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
