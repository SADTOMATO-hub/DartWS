//클래스 정의
class Person{
    //변수 => 필드
  String? name;
    //생성자 => 생략시 기본생성자 사용
  
    //함수 => 메소드
  String getName(){
    return this.name ?? 'NO PERSON';
    }
}

void main(){
  //인스턴스(객체) 생성
  Person student = new Person();
  var teacher = Person();

  //객체 필드 접근
  student.name = 'lee';
  teacher.name = 'kim';

  //객체 메소드 호출
  print('student name : ${student.getName()}');
  print('teacher name : ${teacher.getName()}');
}