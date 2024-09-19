// dart_future.dart


//독립된 객체를 통한 비동기 작업을 실행
void main() {
  print('start');
  //future 객제 생성 : Uncompleted
  Future<String> myFuture = Future((){ //실행결과를 보아서 알겠지만, 논블로킹 방식으로 진행되기 때문에 결과가 예상과는 다르게 나옴
    for(int i = 0 ; i<1000000000; i++){
    }
      //해당 작업이 정상 실행되면
      //return 'i got lots of data';
      return throw Exception('failed : data is too many');
  }); 
  //myFuture내부에 정의 된 값이 completed되었을 때, then이 실행됨.
  myFuture.then((data){
      //작업의 결과 => 매개변수
      print(data);
  },onError: (error){
    //onError = 작업 중 발생한 error
    print('Rrsult : $error');
  });
  print('end');
}