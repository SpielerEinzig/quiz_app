import 'package:quiz_app/question.dart';

int _questionNumber = 0;

class QuizBrain {
  final List<Question> _questionBank = [
    Question(q: "You need to grow constantly", a: true),
    Question(q: "A company's only goal is profit", a: false),
    Question(q: "People should be goal oriented", a: true),
    Question(q: "You should be formless", a: true),
    Question(q: "Always say less than necessary", a: true),
    Question(q: "Become the perfect courier", a: true),
  ];

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

  String getQuestionText() {
    return _questionBank[_questionNumber].q;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].a;
  }
}
