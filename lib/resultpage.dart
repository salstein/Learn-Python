import 'package:flutter/material.dart';
import 'package:flutterpp/answerlist.dart';
import 'package:flutterpp/quizlist.dart';
import 'package:flutterpp/widgets.dart';

class Resultpage extends StatefulWidget {
  final int marks;
  Resultpage({Key key, @required this.marks}) : super(key: key);
  @override
  _ResultpageState createState() => _ResultpageState(marks);
}

class _ResultpageState extends State<Resultpage> {
  List<String> images = [
    "images/success.png",
    "images/good1.jpeg",
    "images/failed.jpeg",
    "images/bad.jpeg"
  ];
  String message;
  String image;

  @override
  void initState() {
    if (marks < 40) {
      image = images[2];
      message = "You Should Try Harder...\n" + "You Scored $marks";
    } else if (marks < 60) {
      image = images[1];
      message = "You Can Do Better...\n" + "You Scored $marks";
    } else if (marks < 100) {
      image = images[0];
      message = "You performed excellently...\n" + "You Scored $marks";
    }
    super.initState();
  }

  int marks;
  _ResultpageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: resultbar(context),
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
                              image,
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
                        child: Text(message,
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
                      child: Text("Continue",
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Quizlist()));
                      },
                      borderSide:
                          BorderSide(width: 3.0, color: Colors.blueAccent),
                     
                      splashColor: Colors.blueAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlineButton(
                      child: Text("Check Answers",
                          style: TextStyle(
                            fontSize: 18.0,
                          )),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Answerlist()));
                      },
                      borderSide:
                          BorderSide(width: 3.0, color: Colors.blueAccent),
                      
                      splashColor: Colors.blueAccent,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
