import 'dart:isolate';

late int count;
void main() {
 // count = 0;
  //이 main은 isolate의 가장 기본이다.
  Isolate.spawn(isolatetest, 2);
  Isolate.spawn(isolatetest, 3);
  Isolate.spawn(isolatetest, 1); //내용, 전달하고자 하는 정보(매개변수)
  
}

void isolatetest(var m){ //실행을 해보면 알겠지만, 결과의 순서가 뒤죽박죽이다. 이는 완전히 독립되어 있다는 증거이다.
  //count ++; count는 main에서 초기화 되었기 때문에, isolate 처럼 완전한 개별 공간을 가지는 곳에선 이 초기화가 적용되지 않는다.
  count = 0;
  print('isolate no.$m, $count');
}

