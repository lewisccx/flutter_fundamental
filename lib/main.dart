import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();

  void onAnimatedContainerTap() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Images"),
            ),
            body: Center(
                child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Spacer(flex:1),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.red,
                ),
                Spacer(flex:2),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.yellow,
                ),
                Spacer(flex:3 ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.green,
                ),
                Spacer(flex:4)
              ],
            ))));
  }
}
