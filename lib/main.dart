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
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFF9796F0), Color(0xFFFBC7D4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Text(
                "dribble",
                style: TextStyle(
                    color: Colors.white, fontFamily: "Pacifico", fontSize: 30),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFF9796F0), Color(0xFFFBC7D4)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[100]),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                icon: Icon(
                                  Icons.email,
                                  color: Colors.pink[200],
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.pink[300])))),
                        TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[500]),
                                icon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.pink[200],
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.pink[300]))))
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 20, 0),
                          child: Text("FORGOT PASSWORD",
                              style: TextStyle(
                                  color: Colors.pink[200],
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)))),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                        
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            
                            child: Material(
                              elevation: 1,
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent,
                              child: InkWell(
                                
                                borderRadius: BorderRadius.circular(10),
                                splashColor: Colors.pink[500],
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    "SIGN IN",
                                    style: TextStyle(
                                    
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                            
                                borderRadius: BorderRadius.circular(10),
                            
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF9796F0),
                                      Color(0xFFFBC7D4)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                        ),
                        FloatingActionButton(
                            backgroundColor: Colors.white,
                            mini: true,
                            elevation: 3,
                            child: Image(
                              image: AssetImage(
                                "images/facebook.png",
                              ),
                            ),
                            onPressed: () {}),
                        FloatingActionButton(
                            backgroundColor: Colors.white,
                            mini: true,
                            elevation: 3,
                            child: Image(
                              image: AssetImage(
                                "images/twitter.png",
                              ),
                            ),
                            onPressed: () {})
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "DON'T HAVE AN ACCOUNT? ",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SIGN UP",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.pink[200],
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
