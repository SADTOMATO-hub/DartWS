import 'package:flutter/material.dart';
import './screens/ListScreen.dart';
import './screens/insert.dart';
import './screens/readScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memo Demo',
      initialRoute: '/memo/list',
      routes: {
        //전체조회
        '/memo/list' : (context) => Listscreen(),
        //단건조회
        '/memo/read' : (context) => ReadScreen(),
        //등록
        '/memo/insert' : (context) => InsertScreen(),
        //수정
      }
    );
  }
}