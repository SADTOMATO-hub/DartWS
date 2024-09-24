// lib/02_DataTest.dart

import 'package:flutter/material.dart';

void main() => runApp(WidgetDemo());


class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo App',
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
  
}

class _FirstPageState extends State<FirstPage>{
  var result;
  @override
   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // 버튼을 클릭할 경우 새로운 위젯을 호출
                  var data = await Navigator.pushNamed(context, '/page2');
                  // 상태 변경 알림
                  setState(() {
                    result = data;  
                  });
                },
                child: Text('Go to next Page'),
              ),
            ),
            Text('$result')
          ],
        )
      );
  }
}

class secondPage extends StatelessWidget {
  final String data;
  secondPage({required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: ElevatedButton(
              onPressed: () {
                //버튼을 클릭할 경우 현재 위젯을 제거
              Navigator.pop(context, '(request)');
              },
              child: Text('Go to previous page'),
            ))
          ]),
    );
  }
}
