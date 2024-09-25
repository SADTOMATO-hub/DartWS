// readScreen.dart
import 'package:flutter/material.dart';
import 'package:sqlite/mappers/MemoDBHelper.dart';


import '../models/memo.dart';

class ReadScreen extends StatefulWidget {
  final MemoDBHelper dbHelper = MemoDBHelper();
  @override
  State<ReadScreen> createState()
                     => _ReadScreen();
}

class _ReadScreen extends State<ReadScreen>{
  late int no;
  late Future<Memo> _memo;
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    final arguments
                 = ModalRoute.of(context)!.settings.arguments;
    if(arguments != null){
      no = arguments as int;
      _memo = widget.dbHelper.getMemoInfo(no);
    }
  }
  
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('조회'),
    ),
    body: FutureBuilder(
      //FUTURE가 완료되 전에도 화면을 렌더링 할 수 있도록
      future: _memo,
      builder: (context/*현재 위치 */, snapshot/*FUTURE의 진행 여부*/)  {
          // snapshot: Future의 상태와 결과 등을 가진 객체
          if (snapshot.connectionState == ConnectionState.waiting) {
            // ConnectionState : Future의 상태 none -> waiting/active -> done
            return const Center(child: CircularProgressIndicator());
            // CircularProgressIndicator : 앱 진행사항을 원형으로 나타내는 위젯
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No data found'));
          } else {
            //실제 화면에 렌더링될 위젯 정의
            var result = snapshot.data;
            return _memoContent(result as Memo);
          }
        },
      ),
   );
  }
    Widget _memoContent(Memo memo){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical:  50, horizontal:  10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${memo.no}',
              style: TextStyle(
                fontSize: 30
              ),
            ),
            Text(
              '${memo.info}',
              style: TextStyle(
                fontSize: 30
              ),
            )
        ]

        )
        );
    }
}