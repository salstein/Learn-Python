import 'package:flutter/material.dart';



class SlideDots extends StatelessWidget {

  bool isActive;
  SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      margin: const EdgeInsets.symmetric(horizontal:10),
      height: isActive? 12:8 ,
      width: isActive? 12:8,
      color: isActive?Colors.black: Colors.blueGrey,
      //decoration: BoxDecoration(
        //borderRadius: BorderRadius.all(Radius.circular(12)),),
    );
  }
}