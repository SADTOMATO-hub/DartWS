// lib/dart_parameter.dart

//선택적 매개변수 <-- 존재 이유 : java의 경우 매개변수 값이 모두 들어오지 않으면 함수가 실행이 안 되지만, 
//                              JS는 같은 경우엔 함수의 매개 변수의 값이 모두 들어오지 않아도 실행이된다.
//                              dart의 경우엔 java와 같은 로직으로 작동하기 때문에 이 '선택적 매개변수'를 써야 함
//1) 이름 있는 매개변수(Named parameter)

void getAddress(
      String country,{ String city = '도쿄도', required String gu, String? ro }
    ){
  String address = '$country, $city, $gu, $ro';
  print(address);    
}

void nameParams(){
  getAddress('일본', city: '도쿄도', gu : '나카노구', ro : '노가타 2-29-18');
   getAddress('대한민국', city: '대구광역시', gu : '달성군', ro : '다사읍');
   getAddress('대한민국', gu: '달성군');
}

//2)위치적 선택 매개변수(Optional positional parameters)
void getAddress2(
      String country, [String city = '東京都', String? gu] /*값이 없을 수도 있다.*/
    ){
      print('$country, $city $gu');
}

void posionParam(){
  getAddress2('日本', '東京都', '中野');
  getAddress2('日本','中野', '東京都');
  getAddress2('日本');
}