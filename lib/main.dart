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
          body: Container(
            color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(15),
                child: Container(
                  color: Colors.red,
                  margin: EdgeInsets.fromLTRB(10, 10, 15, 20),
                  child: Container(
                     margin:EdgeInsets.fromLTRB(10, 10, 15, 20),
                    decoration: BoxDecoration(
                    
                        borderRadius: BorderRadius.circular(30),
                         color: Colors.deepPurple.shade100,
                        gradient: LinearGradient(
                             begin: Alignment.bottomLeft,
                            end: Alignment.topLeft,
                            colors: <Color>[Colors.teal, Colors.red])
                        ),
                  ),
                )),
          )),
    );
  }
}
