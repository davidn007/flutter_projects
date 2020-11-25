import 'package:flutter/material.dart';
import 'src/question_option.dart';

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
  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
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
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      });
                    },
                    child: QuestionOption('a.', 'First Option'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      });
                    },
                    child: QuestionOption('b.', 'Second Option'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      });
                    },
                    child: QuestionOption('c.', 'Third Option'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FlatButton(
                    color: Colors.purple,
                    onPressed: () {
                      setState(() {
                        scoreKeeper.add(
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                        );
                      });
                    },
                    child: QuestionOption('d.', 'Fourth Option'),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 0,
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
