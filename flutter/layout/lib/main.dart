import 'package:flutter/material.dart';
import './screens/loginPage.dart';
import './screens/myInfoPage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp( //사실상 디자인을 담당하는 최상위
      title: 'Layout Practice',
      home: Loginpage(),
    );
  }
}
