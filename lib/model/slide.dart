import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'images/logo.PNG',
    title: 'About Learn CSC201',
    description:
        """Learn CSC201 was developed in order to help students learn Python programming Language which is the Programming Language for CSC201 in Obafemi Awolowo University Ile-Ife.
        Apart from this, this App is a great tool Everyone who wants to learn Python programming language must use because it provides:\n Detailed and concise Notes on Python Programming Language Quizes, and Answers to quiz Questions""",
  ),
  Slide(
    imageUrl: 'images/design.jpg',
    title: 'About Developer',
    description:
        "Salako Oluwaseun is a student of Obafemi Awolowo University, Ile-Ife. He is a Computer programmer, Web Developer, and an Application Developer. He is currently the team lead at BdgCode.\n\n Email: saloluwaseun@gmail.com \n tel: +2348149437093 ",
  )
  
];
