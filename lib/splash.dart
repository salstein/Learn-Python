import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpp/home.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Homepage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Text('LearnCSC201',
              style: TextStyle(
                fontSize: 50.0,
                fontFamily:'Satisfy',
                fontWeight: FontWeight.w700,
                color: Colors.white
              )),
        ));
  }
}
