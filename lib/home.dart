import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterpp/answerlist.dart';
import 'package:flutterpp/python.dart';
import 'package:flutterpp/quizlist.dart';
import 'package:flutterpp/widgets.dart';
import 'carousel.dart';
import 'gettingstarted.dart';
import 'learnpython.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    "images/py.png",
    "images/quiz.png",
  ];

  List<String> des = [
    "Python is one of the most popular and easiest Programming language.\n Pyton is also the official language for CSC201 in Obafemi Awolowo University \n Great right ? Learn Python here!",
    "If you think you have learnt the Language...\n Then Just Test Yourself !",
    "You can check answers to quiz questions here!"
  ];

  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Quizlist(),
          ));
        },
        child: Material(
            color: Colors.blueAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          child: ClipOval(
                              child: Image(
                            image: AssetImage(
                              image,
                            ),
                          )),
                        )),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                          fontFamily: 'Alike',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      des,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontFamily: "Alike"),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget customcard1(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Learnpython(),
          ));
        },
        child: Material(
            color: Colors.blueAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          child: ClipOval(
                              child: Image(
                            image: AssetImage(
                              image,
                            ),
                          )),
                        )),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.yellowAccent,
                          fontFamily: 'Alike',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      des,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontFamily: "Alike"),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget customcard3(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Python(),
          ));
        },
        child: Material(
            color: Colors.blueAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          child: ClipOval(
                              child: Image(
                            image: AssetImage(
                              image,
                            ),
                          )),
                        )),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.yellowAccent,
                          fontFamily: 'Alike',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      des,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontFamily: "Alike"),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

   Widget customcard2(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Answerlist(),
          ));
        },
        child: Material(
            color: Colors.blueAccent,
            elevation: 10.0,
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          child: ClipOval(
                              child: Image(
                            image: AssetImage(
                              image,
                            ),
                          )),
                        )),
                  ),
                  Center(
                    child: Text(
                      langname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.yellowAccent,
                          fontFamily: 'Alike',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      des,
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontFamily: "Alike"),
                      maxLines: 5,
                      textAlign: TextAlign.justify,
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
    );
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/py.png"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: appBar(context),
            backgroundColor: Colors.blueGrey,
            elevation: 0.0,
            brightness: Brightness.light,
            centerTitle: true,
          ),
          drawer: new Drawer(
            elevation: 10,
            child: ListView(children: <Widget>[
              ListTile(
                enabled: true,
                dense: true,
                title: Text("Learn Python"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Learnpython()));
                },
              ),
              ListTile(
                title: Text("Take Quiz"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Quizlist()));
                },
              ),
              ListTile(
                title: Text("Questions and Answers"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Answerlist()));
                },
              ),
              ListTile(
                title: Text("About us"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => GettingStarted()));
                },
              ),
              ListTile(title: Text("Rate App"), onTap: null)
            ]),
          ),
          body: ListView(children: <Widget>[
            customcard1("Learn Python Language", images[0], des[0]),
            customcard("Take Quiz", images[1], des[1]),
            customcard2("Questions and Answers  ", images[0], des[2]),
            customcard3("Write python Codes", images[0], des[2])
          ])),
    );
  }
}
