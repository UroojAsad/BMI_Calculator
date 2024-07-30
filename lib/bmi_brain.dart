
import 'dart:core';
import 'dart:math';

class calculateBrain {

  final int height;
  final int weight;

  calculateBrain({  required this.height , required this.weight});

  String calculatrBMI(){
    _bmi=weight/pow(height/100, 2);

   return _bmi.toStringAsFixed(1);
  }

  double _bmi=19;

  String getresult(){
    if(_bmi>=25){
      return  'overweight';
    }
    else if (_bmi> 18.5){
      return 'Normal';
    }
    else {
      return 'UnderWeight';
    }
  }


  String getInterpretation(){
    if(_bmi>=25){
      return  'You have a higher than normal weight. Try to exercise more.';
    }
    else if (_bmi> 18.5){
      return 'You have a normal body weight. Good job!.';
    }
    else {
      return 'You have a lower than normal weight. Yoy can eat a bit more.';
    }
  }

}


