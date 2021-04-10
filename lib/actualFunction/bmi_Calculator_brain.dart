import 'dart:math';

class BmiCalcultor {
  final int height;
  final int weight;

  BmiCalcultor({required this.height, required this.weight,});

 double _bmi=0;
  String bmiCalculation() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
   
  }

  String getResult() {
    if (_bmi >= 25) {
       print(_bmi);
      return "OVER WEIGHT";
    } else if (_bmi > 18.5) {
      return "NORMAL";
    } else {
      return "UNDER WEIGHT";
    }
  }
  String getInterPretation(){
      if (_bmi >= 25) {
      return "You have a Higher than normal body weight. Try to exercise more.";
    } else if (_bmi > 18.5) {
      return "You have a normal body weight. Good job!";
    } else {
      return "You have a lower than normal body weight. You can eat a bit more";
    }
  }
}
