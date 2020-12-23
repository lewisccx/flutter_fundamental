import 'package:flutter/material.dart';
import 'package:flutter_fundamental/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigation",
          style: TextStyle(color: Colors.cyan),
        ),
        leading: Icon(Icons.adb, color: Colors.white),
        actions: [
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {})
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
                  image: DecorationImage(image: AssetImage("images/puffer-fish.png"), fit: BoxFit.none, repeat: ImageRepeat.noRepeat)),
        ),
      
      ),
      body: LoginPage(),
    ));
  }
}
