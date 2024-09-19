// bin/dart_null.dart
//1) 조건족 멤버 접근: ?.
class Employee{
  String? name;
}

void fileMain(){
  //Employee? emp = null;
  Employee emp = Employee()..name = 'Employee';

  var result = emp?.name;
  print(result);

  if(emp == null){
    result = null;
  }else{
    result = emp.name;
  }
}

// 2) 널 확인 연산자 : ??
void nullChkMain(){
  Employee emp = Employee();

  var result = emp.name; /*= emp.name ?? 'NO EMPLOYEE';*/ // ??  null값일 때 대체한다는 뜻.
//  print(result);

  if(emp.name == null){
    result = 'NO EMPLOYEE';
  }else{
    result = emp.name;
  }
  print(result);
}

void main(){
  //fileMain();
  //nullChkMain();
}