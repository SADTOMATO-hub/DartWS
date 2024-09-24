import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() => runApp(WidgetDemo());

class WidgetDemo extends StatelessWidget {
  late String data;
  @override
  Widget build(BuildContext context) {
    return Provider<String>.value(//최상위 객체인 MaterialApp를 상위하는 객체, MaterialApp보다 먼저 실행 됨, 모든 위젯이 공용으로 사용할 데이터를 저장할 수 있음
      value: 'Shared Data', //공유 데이터
      child: MaterialApp(
            title: 'Flutter Demo App',
            initialRoute: '/firstPage', 
            routes: { 
           '/firstPage': (context) => FirstPage(),
           '/secondPage': (context) => SecondPage(),
        }
      ),
      );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var result;
  @override
  Widget build(BuildContext context) {
    //현재 Provider가 가지고 있는 데이터를 불러오는 코드, 네비게이터와의 연결을 끊어 버렸다.
    result = Provider.of<String>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: ElevatedButton( //이제 네비게이터를 통해 데이터를 받지 않는다는 의미
                onPressed: () {
                  Navigator.pushNamed(context, '/secondPage');
                },
                child: Text('Go to next Page'),
              ),
            ),
            Text('$result')
          ],
        ));
  }
}

class SecondPage extends StatelessWidget {
  late String data;

  @override
  Widget build(BuildContext context) {
        data = Provider.of<String>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: ElevatedButton(
                  // 버튼을 클릭할 경우 현재 위젯을 제거
                  onPressed: () => Navigator.pop(context),
                  child: Text('Go to previous Page'),
                ),
              ),
              Text('$data')
            ]));
  }
}
