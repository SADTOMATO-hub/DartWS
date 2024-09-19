import 'package:dart_class/dart_constructor.dart';

void main(){
  Person pserson = Person();
  print('Person : ${pserson.getName()}');

  Student first = Student("예담", 3, "Hong");
  Student second = Student.defaultInit();
 
 first.showInfo();
 second.showInfo();
}