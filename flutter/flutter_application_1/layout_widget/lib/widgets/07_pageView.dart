// lib/widgets/07_pageView.dart
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
    final PageController _pageController 
                       = PageController(
                                         initialPage: 1
                                       );
    return Scaffold(// 뼈대 앱bar와 body를 처리함
    appBar: AppBar(//여기에 드갈 수 있는 건 무궁무진
      title: const Text('I love cookies'),
    ),
    body: PageView(//page단위
      controller: _pageController,
      children: [
        firstPage(),
        secondPage()
      ],
    )
    );
  }
  
}

ListView firstPage(){
  return ListView(
    children: [
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      ),
      ListTile(
        title: const Text('ListView'),
        subtitle: const Text('Using ListTitle'),
        trailing: const Icon(Icons.more_vert),
        onTap: () => print('first'),
      ),
      ListTile(
        leading:const FlutterLogo(
          size: 50.0,
        ),
        title: const Text('Love'),
        trailing: const Icon(Icons.ac_unit),
        onTap: () => print('second'),
      ),
      ListTile(
        leading: const Icon(
          Icons.ac_unit_sharp,
          size: 50.0,),
        title: const Text('gloomy weekend'),
        subtitle: const Text('happy sandwitch'),
        trailing: const Icon(Icons.add),
        onTap: () => print('third'),
      )
    ],
  );
}
GridView secondPage(){
  return GridView.count(
    padding: const EdgeInsets.all(8),
    crossAxisCount: 3, // 한 행에 배치될 위젯의 갯수
    crossAxisSpacing: 10, // 가로로 위젯 간격
    mainAxisSpacing: 50, // 세로로 위젯 간격
    children: [
      Container(
         padding: const EdgeInsets.all(8),
         color: Colors.red[100],
         alignment: Alignment.center,
         child: const Text('1'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[200],
         alignment: Alignment.center,
         child: Text('2'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[300],
         alignment: Alignment.center,
         child: Text('3'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[400],
         alignment: Alignment.center,
         child: Text('4'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[500],
         alignment: Alignment.center,
         child: Text('5'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[600],
         alignment: Alignment.center,
         child: Text('6'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[700],
         alignment: Alignment.center,
         child: Text('7'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[800],
         alignment: Alignment.center,
         child: Text('8'),
      ),
      Container(
         padding: EdgeInsets.all(8),
         color: Colors.red[900],
         alignment: Alignment.center,
         child: Text('9'),
      )
    ],
  );
}