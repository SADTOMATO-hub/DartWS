//lib.type.dart

void printVariable(){
  num numVal = 10; /**아래 두개를 포괄함 */
  int intVal = 100;
  double dubVal = 12.0;

  numVal = intVal;
  numVal = dubVal;

 // intVal = dubVal; /*서로서로 변환이 안 됨*/ 
 // dubVal = intVal; /*서로서로 변환이 안 됨*/ 

} //숫자

void printCollection(){
 // List list = [1,2,3]; /*다이나믹 타입임*/
  var listVar = [1,2,3];
  print(listVar[0]);
  print(listVar[1]);

  //Set set = {1,1,1,3}; /**set은 같은 값을 가지를 수가 없음, 다이나믹 타입임 */
  Set<int> sets = {1,2,3};
  print(sets.contains(1));

  /*Map map = {
    'name' : 'hong',
    'age' : 20
  };*/ //다이나믹 타입임
  Map<String, dynamic> maps = {
    'name' : 'lee',
    'age' : 29
  };
  print(maps['name']); //dart의 객체 호출

  void printConstant(){
    var val = 10;
    final finalVal = (1 + val);
    const constVal = (1 + 10); //명확하게 리터럴 밖에 안 됨
  }
}