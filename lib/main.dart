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
      body: Column(children: [
        Container(
          color: Colors.blueAccent,
          width: 500,
          height: 300,
          padding: EdgeInsets.all(5),
          child: Image(
            image: NetworkImage(
                "https://www.udiscovermusic.com/wp-content/uploads/2019/04/Blackpink-2019-Kill-This-Love-Press-Shot-web-optimised-1000.jpg"),
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
          ),
        ),
        Container(
          color: Colors.blueAccent,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(5),
          child: Image(
            image: AssetImage("images/blackpink.jpg"),
            fit: BoxFit.contain,
            repeat: ImageRepeat.noRepeat,
          ),
        )
      ]),
    ));
  }
}
