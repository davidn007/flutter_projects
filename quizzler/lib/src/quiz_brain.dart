import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('How many pieces are there on the chess board?', '32'),
    Question('How many iphone series are there?', '20'),
    Question('Humans are referred to as?', 'Homo Sapiens'),
    Question('How many iphone series are there?', '20'),
  ];

  List<QuestionAnswers> _answerBank = [
    QuestionAnswers('16', '32', '8', '34'),
    QuestionAnswers('8', '20', '4', '12'),
    QuestionAnswers('Homo Sapiens', 'Home Erectus', 'Homo Somethingelse',
        'Homo anotherthing'),
    QuestionAnswers('8', '20', '4', '12'),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  String getCorrectAnswer() {
    return _questionBank[_questionNumber].correctQuestionAnswer;
  }

  String getOptionA() {
    return _answerBank[_questionNumber].optionA;
  }

  String getOptionB() {
    return _answerBank[_questionNumber].optionB;
  }

  String getOptionC() {
    return _answerBank[_questionNumber].optionC;
  }

  String getOptionD() {
    return _answerBank[_questionNumber].optionD;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
