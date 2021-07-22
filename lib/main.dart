import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int magicBall = 1;

  void ballNumber() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask Me Anything',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Container(
            child: TextButton(
              child: Image.asset('images/ball1.png'),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
