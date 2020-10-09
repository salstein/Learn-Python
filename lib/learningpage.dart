import 'package:flutter/material.dart';
import 'package:flutterpp/completed.dart';
import 'package:flutterpp/learnfile.dart';
import 'learnfile1.dart';

// ignore: must_be_immutable

class LearnFiles extends StatefulWidget {
  String topic;

  LearnFiles(this.topic);

  @override
  _LearnFilesState createState() => _LearnFilesState(topic);
}

class _LearnFilesState extends State<LearnFiles> {
  String assettoload;
  String name;
  var data;

  _LearnFilesState(
    String topic,
  );

  setname() {
    if (widget.topic == "Introduction") {
      name = "Introduction";
      data = introduction;
    } else if (widget.topic == "Basic Operators in Python") {
      name = "Basic Operators in Python";
      data = basic;
    } else if (widget.topic == "Python Datatypes") {
      name = "Python Datatypes";
      data = datatypes;
    } else if (widget.topic == "Python Data Structures") {
      name = "Python Data Structures";
      data = data_structure;
    } else if (widget.topic == "Flow control Statements") {
      name = "Flow control Statements";
      data = flowcontrol;
    } else if (widget.topic == "Python Functions") {
      name = "Python Functions";
      data = functions;
    } else if (widget.topic == "Python Modules") {
      name = "Python Modules";
      data = modules;
    } else if (widget.topic == "Python OOP") {
      name = "Python OOP";
      data = oop;
    } else {
      name = "Python File";
      data = file;
    }
  }


  @override
  Widget build(BuildContext context) {
    setname();

    return Quizpage(
      name: name,
      data: data,
    );
  }
}

// ignore: must_be_immutable
class Quizpage extends StatefulWidget {
  List mydata;
  var name;
  var data;

  Quizpage(
      {Key key,
     
      @required this.name,
      @required this.data})
      : super(key: key);
  @override
  _QuizpageState createState() => _QuizpageState( name, data);
}

class _QuizpageState extends State<Quizpage> {
  var mydata;
  var name;
  var data;

  _QuizpageState( this.name, this.data);

  int i = 0;
  var b = 0;
  

  void nextitem() {
    setState(() {
      if (i < ((data[1].length) - 1)) {
        i++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Completed(
            name: name,
          ),
        ));
      }
      progress();
    });
  }

  void previousitem() {
    setState(() {
      if (i > 0) {
        i--;
      } else {
        i = 0;
      }
    });
  }

  void progress() {
    setState(() {
      b++;
    });
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Widget choicebutton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          width: 700,
          height: 500,
          child: Text(
            data[0][i],
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Alike",
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget choicebutton1() {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: FlatButton(
        onPressed: null,
        color: Colors.black,
        child: Text(
          data[1][i],
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Alike",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 3,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        bottomOpacity: 10.0,
        title: choicebutton1(),
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: ListView(children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LinearProgressIndicator(
                        value: b / ((data[1].length) - 1),
                        backgroundColor: Colors.amber,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: FlatButton(
                          onPressed: null,
                          child: Text((data[1][i]),
                              style: TextStyle(
                                  color: Colors.blueGrey,
                                  fontFamily: 'Times new Roman',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))),
                    ),
                  ],
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 10,
            child: choicebutton(),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.0),
                  child: Wrap(
                    spacing: 100,
                    children: [
                      RaisedButton(
                        color: Colors.blueGrey,
                        child: Text(
                          'Previous',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => previousitem(),
                      ),
                      RaisedButton(
                        color: Colors.blueGrey,
                        child: Text(
                          'Next',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () => nextitem(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
            ),
          )
        ],
      ),
    );
  }
}
