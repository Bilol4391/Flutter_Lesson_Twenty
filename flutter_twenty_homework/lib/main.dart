import 'package:flutter/material.dart';
import 'package:flutter_twenty_homework/PageOne.dart';
import 'package:flutter_twenty_homework/PageTwo.dart';

void main() {
  runApp(const MainFile());
}

class MainFile extends StatelessWidget {
  const MainFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}
