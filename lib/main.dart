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
        home: DefaultTabController(length: 2, child: MainPage()));
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.purple[500],
          border:
              Border(top: BorderSide(color: Colors.purple[200], width: 50))),
      //indicatorColor: Colors.purple[500],
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
          text: "Comments",
        ),
        Tab(icon: Icon(Icons.computer), text: "News")
      ],
    );

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "tabbar",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
            child: Container(color: Colors.amber, child: myTabBar),
          )),
      body: TabBarView(children: [
        Center(child: Text("tab 1")),
        Center(child: Text("tab 2")),
      ]),
    );
  }
}
