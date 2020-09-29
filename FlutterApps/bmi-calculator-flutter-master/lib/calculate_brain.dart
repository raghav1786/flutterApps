import 'dart:math';

class CalculateBrain {
  final int height;
  final int weight;
  CalculateBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double _bmi;

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getIneterpretations() {
    if (_bmi >= 25) {
      return 'you should do exerice.';
    } else if (_bmi > 18.5) {
      return 'good to go';
    } else {
      return 'eat more healthy food';
    }
  }
}
