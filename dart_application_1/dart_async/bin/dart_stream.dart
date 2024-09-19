// dart_stream.dart

void main(){
  print('start');
  //가장 일반적인 형태
  dynamic stream = Stream.value(100).listen((x) => print('getData : $x')); //stream은 연속적인 작업에 참 좋다.
  //특정 주기로 반복
  stream = Stream.periodic(const Duration(seconds: 1), (i) => i*i).take(5); //1초 주기로 5번 반복
  //작업 요청 : 객체 생성과 요청을 분리
  stream.listen((x)=>print('print : $x'));
  Stream.fromFuture(getData()).listen((x)=>print('after $x'));
  print('end');
}

Future<String> getData() async{
  return Future.delayed(Duration(seconds: 3),
  ()=>'after 3 seconds');
}