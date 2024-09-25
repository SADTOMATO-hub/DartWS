// lib/models/02_changerNotifierProvider.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/models/counter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'Flutter Demo',
    home:  ChangeNotifierProvider(
      create: (_)=> Counter(),
      child: MyHomePage(),
      ),
   );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('카운팅'),
    ),
    body: Center(                        //context.watch<Counter>() = Counter 객체
      child: Text(
        //'현재 숫자 : ${context.watch<Counter>().count}'
        '현재 숫자 : ${Provider.of<Counter>(context)}',
        style: TextStyle(
          fontSize: 50
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
      //=> context.read<Counter>().incrementCount(), //read
      //Counter providerData = context.read<Counter>();
      //providerData.incrementCount();
      Counter providerData = 
      },
      child: Icon(Icons.abc_sharp),
      ),
   );
  }
 
}
