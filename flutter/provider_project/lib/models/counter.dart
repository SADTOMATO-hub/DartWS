//lib/models/couter.dart

import 'package:flutter/material.dart';

class Counter with ChangeNotifier{
  //공통으로 사용할 데이터를 필드로 설정
  int _count = 0;
  //필요한 경우 getter로 접근
  int get count => _count;
  //변셩할 경우 해당 메소드 호출
  void incrementCount(){
    _count++;
    //Provider에게 전달
    notifyListeners();
  }
}