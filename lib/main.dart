import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

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
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "QR code",
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
          child: QrImage(
        data: "https://www.youtube.com/watch?v=7CFAEXymRvM&list=PLZQbl9Jhl-VACm40h5t6QMDB92WlopQmV&index=30",
        backgroundColor: Colors.green,
        foregroundColor: Colors.red,
        errorCorrectionLevel: QrErrorCorrectLevel.M,
        padding: EdgeInsets.all(0),
        version: QrVersions.auto,
        size: 200.0,
      )),
    );
  }
}
