import 'package:dart_application_2/dart_application_2.dart' as dart_func;

//함수 선언 : 리턴타입 함수명([매개변수1[,매개뱐수2[, ....]]])
String printMessage(String msg){
  return 'msg : $msg';
}

//리턴 값이 없는 경우 리턴타입은 void
void welcomeMsg(){
  print('Hello, Dart');
}
//리턴 타입을 생략하는 경우 => 컴파일 단계에서 dynamic이 사용됨
getVal(){
  return (1+1);
}

void main(List<String> arguments){
  var result = printMessage('Today is...');
  print(result);

  welcomeMsg();

  var msg = 'message : ${getVal()}';
  print(msg);
}

