// ;ib/01_PagesTest.dart
import 'package:flutter/material.dart';

void main() => runApp(WidgetDemo());

class WidgetDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      home : firstPage(),
    );
  }  
}
class firstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //버튼을 클릭할 경우 위젯을 전환
            Navigator.push(//stack을 기반으로 하기 때문에
             context,  //context = 현재위치
             MaterialPageRoute(builder: (ctx/*등록되어야 하는 위치*/)=> secondPage())//애니메이션 효과가 생김      
            );
          },
           child: Text('Go to next page'),
           ),
        ),
      );
  }
}

class secondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            // 버튼을 클릭할 경우 현재 위젯을 제거
            Navigator.pop(context);
          },
           child: Text('Go to previous page'),
           ),
        ),
      );
  }
}