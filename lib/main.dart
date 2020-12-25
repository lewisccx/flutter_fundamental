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
  TextEditingController controller =
      TextEditingController(text: "initial text");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.lightBlue[50],
                filled: true,
                suffixIcon: Icon(Icons.access_alarm),
                suffixText: "end text",
                //suffix: ,
                prefix: Container(
                  width: 5,
                  height: 5,
                  color: Colors.red,
                ),
                hintText: "Enter your name",
                hintStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold) ,
                icon: Icon(Icons.adb),
                prefixIcon: Icon(Icons.person),
                //prefixText: "Name: ",
                //prefixStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold) ,
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold) ,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                
              ),
              maxLength: 25,
              maxLines: 1,
              obscureText: true,//password
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text)
          ],
        ),
      ),
    ));
  }
}
