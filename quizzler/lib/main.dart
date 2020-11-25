import 'package:flutter/material.dart';
import 'src/question_option.dart';
import 'src/quiz_brain.dart';

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

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];
  int questionIndex = 1;

  @override
  Widget build(BuildContext context) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    return Column(
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Container(
            // padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    '$questionIndex.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Center(
                  child: Text(
                    quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ],
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
                        if (correctAnswer == quizBrain.getOptionA()) {
                          scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        } else {
                          scoreKeeper.add(Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                        }

                        questionIndex++;
                        quizBrain.nextQuestion();
                      });
                    },
                    child: QuestionOption('a.', quizBrain.getOptionA()),
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
                        setState(() {
                          if (correctAnswer == quizBrain.getOptionB()) {
                            scoreKeeper.add(Icon(
                              Icons.check,
                              color: Colors.green,
                            ));
                          } else {
                            scoreKeeper.add(Icon(
                              Icons.close,
                              color: Colors.red,
                            ));
                          }

                          questionIndex++;
                          quizBrain.nextQuestion();
                        });
                      });
                    },
                    child: QuestionOption('b.', quizBrain.getOptionB()),
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
                        setState(() {
                          if (correctAnswer == quizBrain.getOptionC()) {
                            scoreKeeper.add(Icon(
                              Icons.check,
                              color: Colors.green,
                            ));
                          } else {
                            scoreKeeper.add(Icon(
                              Icons.close,
                              color: Colors.red,
                            ));
                          }

                          questionIndex++;
                          quizBrain.nextQuestion();
                        });
                      });
                    },
                    child: QuestionOption('c.', quizBrain.getOptionC()),
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
                        setState(() {
                          if (correctAnswer == quizBrain.getOptionD()) {
                            scoreKeeper.add(Icon(
                              Icons.check,
                              color: Colors.green,
                            ));
                          } else {
                            scoreKeeper.add(Icon(
                              Icons.close,
                              color: Colors.red,
                            ));
                          }

                          questionIndex++;
                          quizBrain.nextQuestion();
                        });
                      });
                    },
                    child: QuestionOption('d.', quizBrain.getOptionD()),
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
