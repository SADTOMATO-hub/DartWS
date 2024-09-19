void main() {
  // Set 타입 선언 및 초기화
  Set<String> colors = {'red', 'pink', 'green', 'green'}; //보시다 시피 같은 요소가 들어가면 오류를 알린다.
  print(colors.length); //그 결과 중복된 값은 length에서 배제된다.
  print("------------------------------------------------------");
  colors.forEach(print); //중복된 green은 출력하지 않는다.
  print("------------------------------------------------------");
  // Set 타입 선언
  var colorList = <String>{};
  colorList.add('red');
  colorList.add('blue');
  colorList.addAll({'white','black','blue'}); //마찬가지로 중복은 읽을 수가 없다.

  colorList.forEach(print);
  //초기화
}