import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller =
      TextEditingController(text: "initial text");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(length: 4, child: MainPage()));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "tabbar",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          indicatorColor: Colors.purple[100],
          tabs: [
            Tab(
              icon: Icon(Icons.comment),
              text: "Comments",
            ),
            Tab(
              child: Image(
                image: AssetImage("images/puffer-fish.png"),
              ),
            ),
            Tab(icon: Icon(Icons.computer)),
            Tab(text: "News")
          ],
        ),
      ),
      body: TabBarView(children: [
        Center(child: Text("tab 1")),
        Center(child: Text("tab 2")),
        Center(child: Text("tab 3")),
        Center(child: Text("tab 4")),
      ]),
    );
  }
}
