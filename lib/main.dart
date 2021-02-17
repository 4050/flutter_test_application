import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(TestApp());
}

class TestApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp> {
  Random random = Random();
  Color colorCode = Color(0xFF01578B);

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: colorCode,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              _changeBackgroundColor();
            });
          },
          child: Center(
            child: Text(
              "Hey there",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _changeBackgroundColor() {
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
    colorCode = tmpColor;
  }
}
