//패키지 내의 라이브러리 사용
import 'package:dart_application_1/dart_application_1.dart' as dartEx01; /*별칭 지정 필수는 아닌데 쓰는 게 좋음*/

add(int a, int b){
  return a+b;
}

void main(){
  int numberA = 10;
  int numberB = 20;
  var result = add(numberA, numberB);
  dartEx01.printResult(result); /*선언된 별칭을 통해 기능 호출*/ 
}