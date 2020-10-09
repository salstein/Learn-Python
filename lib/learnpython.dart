import 'package:flutter/material.dart';
import 'learningpage.dart';

class Learnpython extends StatefulWidget {
  @override
  _LearnpythonState createState() => _LearnpythonState();
}

class _LearnpythonState extends State<Learnpython> {
  List<String> images = [
    "images/python.jpeg",
    "images/datatypes.png",
    "images/loop.jpeg",
    "images/func.jpeg",
    "images/files.png",
    "images/oop.jpeg"
  ];

  List<String> des = [
    "Python was developed by Guido van Rossum in the late eighties and early nineties at the National Research Institute for Mathematics and Computer Science in the Netherlands",
    "Python supports integers, floating point numbers and complex numbers. They are defined as int, float and complex class in Python",
    "Decision making is required when we want to execute a code only if a certain condition is satisfied.",
    "In this chapter, you'll learn about functions; what is a function, the syntax, components and types of a function. Also, you'll learn to create a function in Python",
    "In this chapter, you will learn to create and import custom modules in Python. Also, you will find different techniques to import and use custom and built-in modules in Python.",
    "In this chapter, you’ll learn about the Object Oriented Programming (OOP) in Python and their fundamental concept with examples.",
    "In this chapter you'll learn about Python file operations. More specifically, opening a file, reading from it, writing into it, closing it and various file methods you should be aware of."
  ];

  Widget customcard2(String pdfname, String image, String des) {
    return Padding(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => LearnFiles(pdfname),
          ));
        },
        child: Material(
            color: Colors.blueGrey,
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
                      pdfname,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.orange,
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
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn python"),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        brightness: Brightness.light,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          customcard2("Introduction", images[0], des[0]),
          customcard2("Basic Operators in Python", images[0], des[0]),
          customcard2("Python Datatypes", images[1], des[1]),
          customcard2("Python Data Structures", images[1], des[1]),
          customcard2("Flow control Statements", images[2], des[2]),
          customcard2("Python Functions", images[3], des[3]),
          customcard2("Python Modules", images[0], des[4]),
          customcard2("Python OOP", images[5], des[5]),
          customcard2("Python File", images[4], des[6])
        ],
      ),
    );
  }
}
