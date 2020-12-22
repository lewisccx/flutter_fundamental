import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;
  void onButton1Clicked() {
    setState(() {
      widgets.add(Text("Data " + counter.toString()));
      counter += 1;
    });
  }

  void onButton2Clicked() {
    setState(() {
      if (widgets.isNotEmpty) {
        widgets.removeLast();
        counter -= 1;
      }
    });
  }
  // _MyAppState() {
  //   for (int i = 0; i < 25; i++) {
  //     widgets.add(Text(
  //       "Data " + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("ListView"),
          ),
          body: ListView(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(child: Text("Increase Text Array"), onPressed: onButton1Clicked),
                RaisedButton(child: Text("Remove Text Array"), onPressed: onButton2Clicked),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start, children: widgets)
          ])),
    );
  }
}
