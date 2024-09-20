// lib/common/main.dart

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{//StatelessWidget가 가지고 있는 필드를 상속
  @override
  Widget build(BuildContext context) {
      //화면에 위젯을 렌더링하는 함수
    return MaterialApp( //화면에 디스플레이 되지 않음, 각 앱에 대한 정보를 출력할 떄 사용
      title: '',
      home: MyHomePage(), //진짜로 화면에 디스플레이 되는 부분
    ); //안드로이드에 주로 사용하는 디자인
  }
}
//여기까지가 공통 코드


//여기부턴 적용되는 위젯에 따라 수정
class MyHomePage extends StatefulWidget{//홈이 실행될 때는 StatefulWidget이다. 스테이트 객제를 생성하는 게 주기능이자 목적
  @override
  State<StatefulWidget> createState() //이 객체는 스테이트에 
                                   => _MyHomePageState(); 
  }
  
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(// 뼈대 앱bar와 body를 처리함
    appBar: AppBar(//여기에 드갈 수 있는 건 무궁무진
      title: const Text('I love cookies'),
    ),
    body: Text('이곳에 위젯 변경')
    );
  }
  
}