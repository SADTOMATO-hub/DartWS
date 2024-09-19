import 'package:flutter/material.dart'; //안드로이드 디자인의 위젯을 제공

void main() => runApp(HellowWorld());//가장 먼저 화면에 나타날 위젯을 설명하는 함수


class HellowWorld extends StatelessWidget{//StatelessWidget : 변화없이 화면 표시만을 위한 위젯
//build가 실제 실행될 기본적인 위젯을 반환
  @override
  Widget build(BuildContext context) {
    //MeterialApp 클래스
    //안드로이드 머터리얼 다자인을 적용하기
   return MaterialApp(
    title : 'First Flutter App',
    home: Scaffold(
      //Scaffold 클래스
      // : MaterialApp 내에서 실제적인 머터리얼 디자인의 기본적인 뼈대
      appBar: AppBar(
        title: const Text('hi demo'),
      ),
      body: const Center(
        child: const Text('hi world'),
      ),
    )
   );
  }
}