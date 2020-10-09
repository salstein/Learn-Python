import 'package:flutter/material.dart';
import 'package:flutterpp/home.dart';
import 'package:flutterpp/answerpage.dart';
import 'package:flutterpp/quizlist.dart';
import 'package:flutterpp/widgets.dart';

import 'learnpython.dart';


class Answerlist extends StatefulWidget {

  

  @override
  _AnswerlistState createState() => _AnswerlistState();
}



 

class _AnswerlistState extends State<Answerlist> {
 

  @override
  Widget build(BuildContext context) {

    Widget custombutton(String quizname) {
    return Padding(
      padding: EdgeInsets.all(
        5.0,
        
      ),
      child: RaisedButton(
        splashColor: Colors.green,
        highlightColor: Colors.green,
        elevation: 10.0,
        color: Colors.white,
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => Getjson(quizname))
          );},
        child: Text(quizname, style: TextStyle(fontFamily:"Quando",color:Colors.black),),
      
      )
    
    );}
    return Scaffold(
      appBar: AppBar(
            title: Text("Quiz and Answer"),
            backgroundColor: Colors.blueGrey,
            elevation: 0.0,
            brightness: Brightness.light,
            centerTitle: true,
            ),

            body:ListView(children: <Widget>[
          custombutton("Variable Names"),
          custombutton("Basic Operators"),
          custombutton("Core Data Types"),
          custombutton("Numeric Types"),
          custombutton("Precedence Associativity-1"),
          custombutton("Precedence Associativity-2"),
          custombutton("Bitwise - 1"),
          custombutton("Bitwise - 2"),
          custombutton("Boolean"),
          custombutton("Formatting"),
          custombutton("Strings - 1"),
          custombutton("Strings - 2"),
          custombutton("Strings - 3"),
          custombutton("Lists - 1"),
          custombutton("Lists - 2"),
          custombutton("Lists - 3"),
          custombutton("Tuples"),
          custombutton("Dictionary"),
          custombutton("While & For Loops - 1"),
          custombutton("While & For Loops - 2"),
          custombutton("While & For Loops - 3"),
          custombutton("Function - 1"),
          custombutton("Function - 2"),
          custombutton("Function - 3"),
          custombutton("Python Modules"),
          custombutton("Math Modules"),
          custombutton("Classes & Objects - 1"),
          custombutton("Classes & Objects - 2"),
          custombutton("Exception Handling "),

          


        ]) ,
      
    );
  }
  }
