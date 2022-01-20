import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  final double _bmi;

  CalculatorBrain({required this.height, required this.weight})
      : _bmi = weight / pow(height / 100, 2);

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }
String getResult(){
    if(_bmi >=25){
      return 'Вы жирный или жирная';
    }else if(_bmi > 18.5){
      return 'нормальное соотношение ';
    }else{
      return 'Надо жрать больше';
    }
}
  String getInterpretaton(){
    if(_bmi >=25){
      return 'У вас масса тела выше нормы. Старайтесь больше заниматься спортом.';
    }else if(_bmi >= 18.5){
      return 'У тебя нормальная масса тела.';
    }else{
      return 'У вас масса тела ниже нормы, старайтесь есть больше';
    }
  }

}