import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Quizzler',
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: SafeArea(child: Quizzler()),
      ),
    );
  }
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            // padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey[900],
            child: Center(
              child: Text(
                'Question go here!',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              color: Colors.green,
              onPressed: () {},
              child: Text(
                'True',
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: FlatButton(
              onPressed: () {},
              color: Colors.red,
              child: Text('False'),
            ),
          ),
        ),
      ],
    );
  }
}
