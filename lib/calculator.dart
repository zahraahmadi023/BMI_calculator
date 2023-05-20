import 'dart:math';

class calculator{
  final int?  height ;
  final int weight;
  double _bmi=0;
  calculator({required this.height, required this.weight});


String calculatorBMI(){
  _bmi=weight!/pow(height!/100, 2);
    return _bmi.toStringAsFixed(1); 
  
}
String getInterPretion(){
  if(_bmi>=25){
    return('you have a higher than normal body weight .try to the exercis moere');

  }else if(_bmi>=18.5){
    return('you have a normal body weight .God job ');

  }else{
    return ('you have lower than normal body weight .you can eat a bit more');
  }
}
  String getResult(){
  if(_bmi>=25){
    return('over weight ');

  }else if(_bmi>=18.5){
    return('Normal ');

  }else{
    return ('Under weight');
  }

}

}
