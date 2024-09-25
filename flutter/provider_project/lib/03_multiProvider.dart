// 03_multiporvider.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/counter.dart';
import './models/text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider
    (providers: [
      //Counter with ChangeNotifier
      ChangeNotifierProvider<Counter>(
        create: (_)=> Counter(),
        ),
      //Message
      ChangeNotifierProvider<Message>(
        create: (_)=> Message(),
        ),
    ],
    child: MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
     ),
    );
  }
}
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: const Text('multiprovider Test'),
    ),
    body:  Column(
      children: [
        Center(
          child: Text('''
            현재 메세지: ${Provider.of<Message>(context).msg}
            '''),
        ),
        Text('현재 숫자 : ${context.watch<Counter>().count}')
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Provider.of<Counter>(context, listen: false).incrementCount();
        context.read<Message>().changeMsg('HI');
      },
      child: Icon(Icons.ac_unit),
      ),
   );
  }
}