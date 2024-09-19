// bin/dart_cascade.dart

class Employee{
  String name = "employee";
  int? age;

  setAge(int age){
    this.age = age;
  } //세터역할을 수행한다.

  showInfo(){
    print('$name is $age');
  }
}

void defaultMain(){
  Employee emp = Employee();
  emp.name = "hong";
  emp.setAge(15);
  emp.showInfo();
}

void cascade(){
  Employee emp = Employee()
                  ..name = "lee"
                  ..setAge(29)
                  ..showInfo();
  print('check : ');
  emp.showInfo();
}//defaultMain와 같은 결과가 나옴. 반복을 최소화 하는 역할 = cascade //선택 사항이긴 js에서 참 많이 쓴단다.

void main(){
  defaultMain();
  cascade();
}