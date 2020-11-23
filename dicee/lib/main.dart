import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text('Dicee'),
        ),
        body: Dicee(),
      ),
    );
  }
}

class Dicee extends StatefulWidget {
  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;

  Random random = Random();
  int changeDiceNumber() {
    firstDiceNumber = random.nextInt(6) + 1;
    secondDiceNumber = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
              },
              child: Image.asset('images/dice$firstDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeDiceNumber();
                });
              },
              child: Image.asset('images/dice$secondDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
