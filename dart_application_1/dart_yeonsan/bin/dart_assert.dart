// bin/dart_assert.dart

void main(){
  int a = 10;
  int b = 20;

  //일반 조건문
  if(a < b){
    print('$a < $b');
  }else{
    print('$a > $b');
  }

  //에러 
  assert(a < b);
  //assert(a > b); assert 같은 경우엔 조건식이 거짓일 경우 강제로 오류를 발생시킨다.

  print("종료");
}