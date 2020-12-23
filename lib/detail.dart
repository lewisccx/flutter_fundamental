import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Page"),),
      body: Center(
        child: RaisedButton(child: Text("BACK TO HOME PAGE"), onPressed: () {
          Navigator.pop(context);
        }),
      ),
    );
  }
}
