import 'package:dart_yeonsan/dart_yeonsan.dart' as dart_yeonsan;

void main(List<String> arguments) {
  dynamic num = 5;
  var result = num / 2;
  print('/2, $result');
  result = num % 2;
  print('%2, $result');
  result = num ~/ 2;
  print('~/2, $result'); //int로 값이 고정반환

  num ~/= 2; // num = num ~/ 2;
  print('$num');

  print('===================================================');
  // ?? -> 기본할당 연산자
  // ??= : ??(if null) 두가지 연산자가 합쳐진 것과 같다. 해석/ 이 변수가 null값일 때 가지는 값을 변경하겠다.

  String? msg = null;
  print(msg);
  msg ??= 'Gloomy Weekend';
  print(msg);
  msg ??= 'shiny Weekend';
  print(msg);
}
