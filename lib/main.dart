import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  String message = "initial text";
  void onButtonClicked() {
    setState(() {
      message = "text changeeeed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("data"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                  child: Text("Click Me"),
                  onPressed: () {
                    setState(() {
                      message = "text changd";
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
