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

  void clickedOption(String optionNumber) {}

  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (correctAnswer == userPickedAnswer) {
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
  }

  @override
  Widget build(BuildContext context) {
    // String correctAnswer = quizBrain.getCorrectAnswer();
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
                      checkAnswer(quizBrain.getOptionA());
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
                      checkAnswer(quizBrain.getOptionB());
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
                      checkAnswer(quizBrain.getOptionC());
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
                      checkAnswer(quizBrain.getOptionD());
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
