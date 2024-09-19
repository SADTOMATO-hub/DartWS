import 'dart:ffi';

void main() {
  //map
  Map<int, String> colorMap = {1:'red', 2:'green', 3:'yellow', 4:'red'};
  // Map이 보유한 값의 실제 타입 : MapEntry --> key와 value 한 쌍이 mapEntry임
  print(colorMap.length); 
  print("===================================================");
    for(var key in colorMap.keys){ 
      print('$key, ${colorMap[key]}');
    }
  // Map 타입 선언
  var maps = <String, int>{}; // 이 형태도 있고
  //var maps = Map();//이 형태도 있다

  //초기화
  maps['red'] = 1; //키에 값을 넣음
  maps['yellow'] = 2;
  maps['green'] = 3;
  print("===================================================");
  maps.forEach((key, love){
  print('$key, $love');
  });
  //이미 해당 키가 등록된 경우 값을 업데이트,
  //해당 키가 등록되지 않은 경우 추가
  print("===================================================");
  maps.update('pink', (value)=>20, ifAbsent: () => 0); //함수로 업데이트 함, pink는 없는 값이기 때문에 0을 할당 받음
  maps.update('red', (value)=>10); //red는 있는 값이기 때문에 10을 재할당 받음.
  maps.forEach((key,value){
    print('$key, $value');
  });
}