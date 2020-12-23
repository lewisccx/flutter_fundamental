import 'package:flutter/material.dart';
import 'package:flutter_fundamental/detail.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("GO TO SECOND PAGE"),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage();
              }));
            }),
      ),
    );
  }
}
