import 'package:dart_collection/dart_collection.dart' as dart_collection;

void main(List<String> arguments) {
  //list 타입 선언 및 초기화
  List<String> colors = ['Red', 'Orange', 'Yellow']; //<--실제로 가지는 값
  print(colors.first); // 첫번째 값
  print(colors.length); // 길이
  for (int i = 0; i < colors.length; i++) {
    print(colors[i]);
  }

  // List 타입 선언
  var colorList = <String>[];
  print(colorList.isEmpty); //비어있나요? 라는 뜻
  // 초기화
  colorList.add('Pink');
  colorList.add('Pupple');
  colorList.addAll(['White', 'Black', 'Gray']);
  //forEach
  colorList.forEach(print);
  print("-------------------------------------------");
  colorList.forEach((love){
    print(love);
  }); //위와 같은 형태의 프린트와 같은 결과를 출력한다.
}
