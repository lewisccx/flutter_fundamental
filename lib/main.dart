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
        title: Text("Flexible Layout"),
      ),
      body: Stack(
        children: [
          //background
          Column(children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(flex: 1, child: Container(color: Colors.amber)),
                  Flexible(flex: 1, child: Container(color: Colors.green))
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(flex: 1, child: Container(color: Colors.orange)),
                  Flexible(flex: 1, child: Container(color: Colors.red))
                ],
              ),
            ),
          ]),
          ListView(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Text 1",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ])
            ],
          ),
          Align(
            //-1 to 0
            alignment: Alignment(-0.9,0.2),
            child: RaisedButton(
                child: Text("click me",style: TextStyle(color: Colors.white),), color: Colors.black, onPressed: () {})),
          
        ],
      ),
    ));
  }
}
