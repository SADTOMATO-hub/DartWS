// bit/dart_type_yeonsan

class Person{
    //필드
  String name = 'Person';  
    //생성자
    //메소드
}

class Employee extends Person{
  String name = 'Employee';
}

class Student extends Person{
  String name = 'Student';
}

void main(){
  Employee emp = Employee(); //new연산자에서 new를 생략한 형태
  Student std = Student();

  //타입변환
  Person first = emp as Person; // 타입변환
  Person second = std; // 상속관계가 명확하다면 as 생략 가능

  print('first.name = ${first.name}'); //Employee
  print('second.name = ${second.name}');// Student

  //맞는지, 타입검사 : is
  if(emp is Employee){
    print('emp is Employee');
  }else{
    print('emp is not Employee');
  }

  //아닌지, 타입검사 : is!
  if(emp is! Employee){
    print('emp is not Employee');
  }else{
    print('emp is Employee');
  }
}