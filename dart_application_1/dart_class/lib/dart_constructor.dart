// lib/dart_constructor.dart

class Person {
  String? name;

  // 기본 생성자, 생성자를 생략하는 경우
  Person(){} 
  getName(){
    return this.name;
  }
}
class Student{
    //필드
  String? school;
  int? grade;
  String? name; 
//이름이 없는 생생자, 클레스 명을 사용
  Student(String school, int grade, String name){
    this.school = school;
    this.grade = grade;
    this.name = name;
}
//이름 없는 생성자를 생성했디면, 기본 생성자 생성이 불가능
//Student() {}

//이름이 있는 생성자, 클래스 명.이름
  Student.defaultInit(){
    print('이름이 있는 생성자 호출');
  }

  showInfo(){
    print('$school, $grade, $name');
  }
}
