import 'package:flutter/material.dart';
import 'package:flutterpp/quizpage.dart';
import 'package:flutterpp/learnpython.dart';
import 'package:flutterpp/quizlist.dart';

class Completed extends StatefulWidget {
  final String name;
  Completed({Key key, @required this.name}) : super(key: key);
  @override
  _CompletedState createState() => _CompletedState(name);
}

class _CompletedState extends State<Completed> {
  List<String> images = [
    "images/completed.png",
  ];

   String name;
   
  _CompletedState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Congratulation"),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Material(
              elevation: 10.0,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(
                              images[0],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 15.0,
                      ),
                      child: Center(
                        child: Text("You have completed $name",
                            style: TextStyle(
                                fontSize: 15.0, fontFamily: "Quando")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlineButton(
                      child: Text("Continue Learning",
                          style: TextStyle(
                            fontSize: 15.0,
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Learnpython()));
                      },
                      borderSide:
                          BorderSide(width: 3.0, color: Colors.blueAccent),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      splashColor: Colors.blueAccent,
                    ),
                  ),
                  OutlineButton(
                    child: Text("Take Quiz",
                        style: TextStyle(
                          fontSize: 18.0,
                        )),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => Getjson(
                              name
                              )));
                    },
                    borderSide:
                        BorderSide(width: 3.0, color: Colors.blueAccent),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    splashColor: Colors.blueAccent,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
