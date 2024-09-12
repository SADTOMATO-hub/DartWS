// 일급객체
// 1) 변수가 함수를 참조할 수 있다

void welcomeMsg(){
  print('hi?');
}

void firstMain(){
  //변수에 함수를 할당
  var myFun = welcomeMsg; //함수를 객체로 인식하기 때문에 가능한 것이다.
  //함수 호출
  welcomeMsg();
  myFun();
}

// 2) 매개변수로 함수를 받을 수 있음
void forEach(var collback){
  var list = [1, 2, 3, 4, 5]; 
  for(int i = 0; i<list.length; i++){
    collback(list[i], list); //<--plus
    //plus(i, list);
  }
}

void plus(int num, var list){
  int result = num + 100;
  print(result);
  print('list : $list');
}

void secondMain(){
  forEach(plus);
}

//3)함수를 반환할 수 있다.
makeAddfunction(int num){
  String msg = 'result';
  //함수 내부에 익명함수 선언
  return (x){ //<==익명함수
    // 'result : (변수 num과 x를 더한 결과 값)'
    return '$msg : ${num + x}';
  };
}

void thirdMain(){
  int value = 10;

  var add = makeAddfunction(value);
  //add는 하나의 함수, 매개변수로 넘어오는 모든 값에 10을 더하는 함수

  //함수호출
  print('$value + 5 : ${add(5)}');
  print('$value + 10 : ${add(10)}');
}