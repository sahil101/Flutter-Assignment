import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> toggletexts = ['Change it', 'This is My app', 'yeah bro!'];
  int len = 0;
  void change() {
    setState(() {
      len++;
      if (len >= toggletexts.length) len = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              text(toggletexts, len),
              raisedbtn(change),
            ],
          ),
        ),
      ),
    );
  }
}

class raisedbtn extends StatelessWidget {
  final Function change;
  raisedbtn(this.change);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: change,
        color: Colors.black,
        child: Text("press it"),
        textColor: Colors.white);
  }
}

class text extends StatelessWidget {
  final List<String> toggletexts;
  final int len;
  text(this.toggletexts, this.len);
  @override
  Widget build(BuildContext context) {
    return Text(toggletexts[len],
        style: TextStyle(
          fontSize: 40,
        ));
  }
}
