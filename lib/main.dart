import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Fundamental"),
        ),
        body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 50,
              child: Text(
                "Hello World, Are you ready for upcoming challenges",
                maxLines: 3,
                overflow: TextOverflow.visible,
                softWrap: true,
                textAlign: TextAlign.right,
                style:
                    TextStyle(color: Colors.white, 
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              )),
        ),
      ),
    );
  }
}
