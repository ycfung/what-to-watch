import 'package:what_to_watch/RandomBLoc.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'What to watch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '今天看什么'),
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
  _MyHomePageState createState() => _MyHomePageState();
}

void listenAfterDelay() async {}

class _MyHomePageState extends State<MyHomePage> {
  var buttonColor = Colors.blue;
  var textColor = Colors.white;
  var _bLoC = new RandomBLoC();
  String _name;

  void pressButton() {
    setState(() {
      _bLoC.randomMenu(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      Column(
        children: <Widget>[
          Container(
            height: 100,
            child: StreamBuilder(
              stream: _bLoC.stream,
              initialData: "点一下吧",
              builder: (context, snapshot) {
                _name = snapshot.data;
                return Text(
                  _name,
                  style: TextStyle(fontSize: 34, color: Colors.black87),
                );
              },
            ),
          ),

          Container(
            height: 200,
            child: Row(
              children: <Widget>[
                Spacer(),
                RaisedButton(
                  color: Colors.blue,
                  child: Text("摇番号", style: TextStyle(color: textColor)),
                  onPressed: pressButton,
                ),
                Spacer(),
                RaisedButton(
                  color: Colors.green,
                  child: Text("看详情", style: TextStyle(color: textColor)),
                  onPressed: _launchURL,
                ),
                Spacer(),
              ],
            ),
          ),

          Container(
            height: 100,
            alignment: Alignment.bottomCenter,
            child: Text("已收录10852个番号",
                style: TextStyle(color: Colors.grey, fontSize: 12)),
          )
        ],
      )


          ],
        ),
      ),
    );
  }

  _launchURL() async {
    if (_name == "点一下吧") return;
    var url = 'https://www.cdnbus.cloud/' + _name;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
