import 'package:flutter/material.dart';
import 'package:flutterpp/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CSC201',
      theme: ThemeData(
        
        primarySwatch: Colors.pink,
  
       
      ),
       home: Splashscreen(),
    );
     
    
  }
}

