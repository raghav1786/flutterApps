import 'question.dart';

class QuizBrain {
  List<Question> _questionList = [
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'This is where the question text will go.', a: true),
  ];

  int _questionNumber = 0;

  String getQuestion() {
    return _questionList[_questionNumber].questionText;
  }

  bool getAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }

  void resetQuiz() {
    _questionNumber = 0;
  }

  void goToNextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
    }
  }

  bool openDialog() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
