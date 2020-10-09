import 'package:flutter/material.dart';
import 'dart:async';
import 'package:starflut/starflut.dart';

class Python extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Python Console'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _outputString = "python 3.6";

  bool _isButtonDisabled = true;
  final myController = TextEditingController();

  _MyHomePageState() {
    _initStarCore();
  }

  StarSrvGroupClass srvGroup;

  void _initStarCore() async {
    StarCoreFactory starcore = await Starflut.getFactory();
    StarServiceClass Service =
        await starcore.initSimple("test", "123", 0, 0, []);
    await starcore.regMsgCallBackP(
        (int serviceGroupID, int uMsg, Object wParam, Object lParam) async {
      if (uMsg == Starflut.MSG_DISPMSG || uMsg == Starflut.MSG_DISPLUAMSG) {
        showOutput(wParam);
      }
      print("$serviceGroupID  $uMsg   $wParam   $lParam");
      return null;
    });
    srvGroup = await Service["_ServiceGroup"];
    bool isAndroid = await Starflut.isAndroid();
    if (isAndroid == true) {
      String libraryDir = await Starflut.getNativeLibraryDir();
      String docPath = await Starflut.getDocumentPath();
      if (libraryDir.indexOf("arm64") > 0) {
        Starflut.unzipFromAssets("lib-dynload-arm64.zip", docPath, true);
      } else if (libraryDir.indexOf("x86_64") > 0) {
        Starflut.unzipFromAssets("lib-dynload-x86_64.zip", docPath, true);
      } else if (libraryDir.indexOf("arm") > 0) {
        Starflut.unzipFromAssets("lib-dynload-armeabi.zip", docPath, true);
      } else {
        //x86
        Starflut.unzipFromAssets("lib-dynload-x86.zip", docPath, true);
      }
      await Starflut.copyFileFromAssets("python3.6.zip",
          "flutter_assets/starfiles", null); //desRelatePath must be null
    }
    if (await srvGroup.initRaw("python36", Service) == true) {
      _outputString = "init starcore and python 3.6 successfully";
      _isButtonDisabled = false;
    } else {
      _outputString = "init starcore and python 3.6 failed";
    }

    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //_counter++;
    });
  }

  void showOutput(String Info) async {
    if (Info == null || Info.length == 0) return;
    _outputString = _outputString + "\n" + Info;
    setState(() {});
  }

  void runScriptCode() async {
    if (myController.text.length == 0) return;
    await srvGroup.runScript("python", myController.text, null);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
      ),
      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: EditableText(
                  controller: myController,
                  /*TextEditingController(), */
                  cursorColor: Colors.red,
                  textDirection: TextDirection.ltr,
                  focusNode: FocusNode(),
                  autocorrect: false,
                  maxLines: null,
                  style: TextStyle(color: Colors.black),
                  backgroundCursorColor: Colors.white,
                  /*
                onSubmitted: (String text) {
                  runPythonCode(text);
                }
                */
                ),
              ),
            ),
            new Container(
              height: 1.0,
              color: Colors.black,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new RaisedButton(
                    onPressed: () {
                      myController.text = "";
                      setState(() {});
                    },
                    child: new Text("Clar")),
                new RaisedButton(
                    onPressed:  runScriptCode,
                    child: new Text("Run")),
              ],
            ),
            new Container(
              height: 1.0,
              color: Colors.black,
            ),
            new Container(
              height: 200.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: new SingleChildScrollView(
                child: new Container(
                  alignment: Alignment.topLeft,
                  child: new Text(
                    '$_outputString',
                    style: new TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
