import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutterpp/answerlist.dart';
import 'package:flutterpp/resultpage.dart';
import 'package:flutterpp/widgets.dart';

// ignore: must_be_immutable

class Getjson extends StatelessWidget {
  final String quizname;
  String assettoload;
  Getjson(this.quizname);

  // a function
  // sets the asset to a particular JSON file
  // and opens the JSON
  setasset() {
    if (quizname == "Variable Names") {
      assettoload = "assets/python.json";
    } else if (quizname == "Basic Operators") {
      assettoload = "assets/b op.json";
    } else if (quizname == "Core Data Types") {
      assettoload = "assets/core.json";
    } else if (quizname == "Numeric Types") {
      assettoload = "assets/numeric.json";
    } else if (quizname == "Precedence Associativity-1") {
      assettoload = "assets/precedence1.json";
    } else if (quizname == "Precedence Associativity-2") {
      assettoload = "assets/precedence2.json";
    } else if (quizname == "Bitwise - 1") {
      assettoload = "assets/bitwise1.json";
    } else if (quizname == "Bitwise - 2") {
      assettoload = "assets/bitwise2.json";
    } else if (quizname == "Boolean") {
      assettoload = "assets/boolean.json";
    } else if (quizname == "Formatting") {
      assettoload = "assets/formatting.json";
    } else if (quizname == "Strings - 1") {
      assettoload = "assets/strings1.json";
    } else if (quizname == "Strings - 2") {
      assettoload = "assets/strings2.json";
    } else if (quizname == "Strings - 3") {
      assettoload = "assets/Strings3.json";
    } else if (quizname == "Lists - 1") {
      assettoload = "assets/list1.json";
    } else if (quizname == "Lists - 2") {
      assettoload = "assets/list2.json";
    } else if (quizname == "Lists - 3") {
      assettoload = "assets/list3.json";
    } else if (quizname == "Tuples") {
      assettoload = "assets/tuple.json";
    } else if (quizname == "Dictionary") {
      assettoload = "assets/dictionary.json";
    } else if (quizname == "While & For Loops - 1") {
      assettoload = "assets/while1.json";
    } else if (quizname == "While & For Loops - 2") {
      assettoload = "assets/while2.json";
    } else if (quizname == "While & For Loops - 3") {
      assettoload = "assets/while3.json";
    } else if (quizname == "Function - 1") {
      assettoload = "assets/function1.json";
    } else if (quizname == "Function - 2") {
      assettoload = "assets/function2.json";
    } else if (quizname == "Function - 3") {
      assettoload = "assets/function3.json";
    } else if (quizname == "Python Modules") {
      assettoload = "assets/module.json";
    } else if (quizname == "Math Modules") {
      assettoload = "assets/math.json";
    } else if (quizname == "Classes & Objects - 1") {
      assettoload = "assets/class1.json";
    } else if (quizname == "Classes & Objects - 2") {
      assettoload = "assets/class2.json";
    } else {
      assettoload = "assets/exception.json";
    }
  }

  @override
  Widget build(BuildContext context) {
    setasset();
    return FutureBuilder(
      future:
          DefaultAssetBundle.of(context).loadString(assettoload, cache: true),
      builder: (context, snapshot) {
        List mydata = json.decode(snapshot.data.toString());
        if (mydata == null) {
          return Scaffold(
            body: Center(
              child: Text(
                "Loading...",
              ),
            ),
          );
        } else {
          return Quizpage(mydata: mydata);
        }
      },
    );
  }
}

// ignore: must_be_immutable
class Quizpage extends StatefulWidget {
  var mydata;

  Quizpage({Key key, @required this.mydata}) : super(key: key);
  @override
  _QuizpageState createState() => _QuizpageState(mydata);
}

class _QuizpageState extends State<Quizpage> {
  var mydata;
  _QuizpageState(this.mydata);

  Color colortoshow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;
  int marks = 0;
  int i = 1;
  // extra varibale to iterate
  int j = 1;
  int timer = 30;
  String showtimer = "30";
  var random_array;

  Map<String, Color> btncolor = {
    "a": Colors.white,
    "b": Colors.white,
    "c": Colors.white,
    "d": Colors.white,
  };

  bool canceltimer = false;

  // code inserted for choosing questions randomly
  // to create the array elements randomly use the dart:math module
  // -----     CODE TO GENERATE ARRAY RANDOMLY

  genrandomarray() {
    var distinctIds = [];
    var rand = new Random();
    for (int i = 0;;) {
      distinctIds.add(rand.nextInt(10));
      random_array = distinctIds.toSet().toList();
      if (random_array.length < 10) {
        continue;
      } else {
        break;
      }
    }
    print(random_array);
  }

  //   var random_array;
  //   var distinctIds = [];
  //   var rand = new Random();
  //     for (int i = 0; ;) {
  //     distinctIds.add(rand.nextInt(10));
  //       random_array = distinctIds.toSet().toList();
  //       if(random_array.length < 10){
  //         continue;
  //       }else{
  //         break;
  //       }
  //     }
  //   print(random_array);

  // ----- END OF CODE
  // var random_array = [1, 6, 7, 2, 4, 10, 8, 3, 9, 5];

  // overriding the initstate function to start timer as this screen is created
  @override
  void initState() {
    starttimer();
    genrandomarray();
    super.initState();
  }

  // overriding the setstate function to be called only if mounted
  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  void starttimer() async {
    const onesec = Duration(seconds: 1);
    Timer.periodic(onesec, (Timer t) {
      setState(() {
        if (timer < 1) {
          t.cancel();
          nextquestion();
        } else if (canceltimer == true) {
          t.cancel();
        } else {
          timer = timer - 1;
        }
        showtimer = timer.toString();
      });
    });
  }

  void nextquestion() {
    canceltimer = false;
    
    setState(() {
      if (j < 10) {
        i = random_array[j];
        j++;
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => Answerlist(),
        ));
      }
      btncolor["a"] = Colors.white;
      btncolor["b"] = Colors.white;
      btncolor["c"] = Colors.white;
      btncolor["d"] = Colors.white;
    });
    
  }

  void checkanswer(String k) {
    // changed timer duration to 1 second
  
  }

  Widget choicebutton(String k) {
    return Padding(
      padding: EdgeInsets.symmetric(),
      child: MaterialButton(
        onPressed: () => checkanswer(k),
        child: Text(
          mydata[1][i.toString()][k] ?? " loading",
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Alike",
            fontSize: 16.0,
          ),
          maxLines: 3,
        ),
        color: btncolor[k],
        splashColor: Colors.white,
        highlightColor: Colors.indigo[700],
        minWidth: 200.0,
        height: 45.0,
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 10.0,
        title: Text("Answer page"),
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.topLeft,
              child: Text(
                mydata[0][i.toString()] ?? " loading",
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Quando",
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ListView(
                              children: <Widget> [Column(
                  children: <Widget>[
                    choicebutton(
                      "a" ?? " loading",
                    ),
                    choicebutton(
                      "b" ?? " loading",
                    ),
                    choicebutton(
                      "c" ?? " loading",
                    ),
                    choicebutton(
                      "d" ?? " loading",
                    ),
                  ],
                ),]
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(4),
              alignment: Alignment.topLeft,
              child: Center(
                child: Text(
                  mydata[3][i.toString()],
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Times New Roman",
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: FlatButton(onPressed: () => nextquestion(), child: Text("Next")),
                
              ),
            ),
          )
        ],
      ),
    );
  }
}
