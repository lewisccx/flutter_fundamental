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
    return MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text(
          "Opaque card UI ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFA1FFCE), Color(0xFFFAFFD1)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter))),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 8,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/google-dots.jpg",
                                ),
                                fit: BoxFit.fill,
                                repeat: ImageRepeat.noRepeat,
                              ))),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage("images/tree.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(children: [
                          Text("Beatiful Sunset at Paddy Field",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 25)),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Posted on ",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12)),
                                Text("June 18 2020",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(
                                flex: 10,
                              ),
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                "99",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 5),
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                "888",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(
                                flex: 10,
                              ),
                            ],
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
