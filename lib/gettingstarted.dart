import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpp/home.dart';
import 'package:flutterpp/widgets/slide_dots.dart';
import 'package:flutterpp/widgets/slideitems.dart';

import 'model/slide.dart';

class GettingStarted extends StatefulWidget {
  @override
  _GettingStartedState createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  int _currentPage = 0;

  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer.periodic(Duration(seconds: 15), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(seconds: 5),
        curve: Curves.easeInOutBack,
      );
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Expanded(
                flex:6,
                  child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: <Widget>[
                    PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (context, i) => SlideItems(i)),
                    Expanded(
                      flex: 1,
                                          child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 35),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                for (int i = 0; i < slideList.length; i++)
                                  if (i == _currentPage)
                                    SlideDots(true)
                                  else
                                    SlideDots(false)
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  FlatButton(
                    child: Text("Go home", style: TextStyle(fontSize: 18)),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    padding: const EdgeInsets.all(15),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
