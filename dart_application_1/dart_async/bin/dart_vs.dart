// dart_vs.dart
//서버가 가지고 있는 이미지로 가정
import 'dart:io';

List<String> msg = [
  'hello ',
  'welcome ',
  'to ',
  'my world '
];

void futureTest(){
  var future = Future((){ //future는 반복적인 결과를 도출하는 데에 적합하지 않다
    //var result = '';
    for(int i = 0; i < msg.length; i++){
      //result += msg[i];
      return msg[i];
    }
    //return result;
  });
  future.then((x)=>stdout.write(x), 
                   onError: (e) => print(e));
}//end futureTest

void streamTest(){//반복적으로 수행하고자 하는 것을 처리
  var stream = Stream.fromIterable(msg);
  stream.listen((x) => stdout.write(x));
}//end streamTest

void main(List<String> args) {
 // futureTest();
  streamTest();
}