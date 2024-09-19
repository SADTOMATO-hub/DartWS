//dart_multiFuture

//async와 await
Future<String> getData(var no) {
  return Future(() {
    for (int i = 0; i < 1000000000; i++) {
    }
      return '$no complete';
  });
}

void futureTest(var no) async{ //비동기 작업이지만 결과가 나올 때까지 stop을 건다. 기억해두자
  print('$no start');

  var first = await getData(1);
  print('$no first result : $first');

  var second = await getData(2);
  print('$no second result : $second');

  var third = await getData(3);
  print('$no third result : $third');

  print('$no end');
}

void main() {

  futureTest(1);
   futureTest(5); //이 두개의 함수의 결과는 뒤섞였을 지라도 함수 내부의 순서는 그대로 진행된다.
  // print('start');

  // getData(1).then((data){
  //   print(data);

  //   getData(2).then((data){
  //     print(data);

  //     getData(3).then((data){
  //       print(data);

  //     });
  //   });
  // });
  // print('end');
} //가독성이 참으로 떨어지죠? 이거 땜시롱 생긴 게 async, await
