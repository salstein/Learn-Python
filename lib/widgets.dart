import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText( textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text: 'Learn', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54, fontFamily:'Quando' )),
        TextSpan(text: 'CSC201', style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontFamily: 'Quando', fontSize: 18.0)),
      ],
    ),
  );
}


Widget resultbar(BuildContext context) {
  return RichText( textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text: 'Quiz', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54, fontFamily:'Quando' )),
        TextSpan(text: 'Results', style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontFamily: 'Quando', fontSize: 18.0)),
      ],
    ),
  );
}


Widget quizbar(BuildContext context) {
  return RichText( textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text: 'Quiz', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54, fontFamily:'Quando' )),
      ],
    ),
  );
}

Widget learnpython(BuildContext context) {
  return RichText( textAlign: TextAlign.center,
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(text: 'Learn', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black54, fontFamily:'Quando' )),
        TextSpan(text: 'Python', style: TextStyle(fontWeight: FontWeight.w100, color: Colors.white, fontFamily: 'Quando', fontSize: 18.0)),
      ],
    ),
  );
}
