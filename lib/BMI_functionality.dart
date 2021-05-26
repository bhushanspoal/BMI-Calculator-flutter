import 'dart:math';
import 'package:flutter/cupertino.dart';
class BMI_brain {
  BMI_brain({@required this.height_1, @required this.weight_1 });

  final double height_1;
  final int weight_1;
  double _bmi;
 String Claculate(){
    _bmi = weight_1/pow(height_1/100,2);
   return _bmi.toStringAsFixed(1);
 }
 String result(){
   if (_bmi > 25){
     return 'OVERWEIGHT';
   }else if(_bmi>18.5){
     return 'NORMAL';
   }else{
     return 'UNDERWEIGHT';
   }
 }
 String interpretation(){
   if (_bmi>=25){
     return 'Your weight is high compared to the normal body. Try to exercise';
   }else if(_bmi>18.5){
     return 'Maintain this same diet and keep doing the exercise. cheers!';
   }else{
     return 'You have to start eating a little more and exercise';
   }
 }
}