// screens/ListScreen.dart

import 'package:flutter/material.dart';
import 'package:sqlite/mappers/MemoDBHelper.dart';
import 'package:sqlite/models/memo.dart';

class Listscreen extends StatefulWidget {
  final MemoDBHelper dbHelper = MemoDBHelper();
  @override
  State<Listscreen> createState()
                     => _ListscreenState();
}
class _ListscreenState extends State<Listscreen>{
  List<Memo> _memoList = [];

  @override
  void initState(){
    super.initState();
    //초기화
    widget.dbHelper
          .getMemos()
          .then((result){
            setState(() {//비동기 작업 중, 필요한 단계
            _memoList = result;
            });
          });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MEMOES'),
      ),
      body: ListView.builder(
        itemCount: _memoList.length,
        //전해진 갯수만큼 동일한 item을 적용
        itemBuilder: (context, index){
          Memo memo = _memoList[index];
          return ListTile(
            leading: Text('${memo.no}'),
            title: Text('${memo.info}'),
            trailing: IconButton(
              onPressed: () async{
                //삭제
                int result = await widget.dbHelper.deleteMemo(memo.no as int);
                if(result > 0){
                  setState(() {
                    _memoList.removeWhere((info) => info.no == memo.no);
                  });
                }
              },
               icon: Icon(Icons.delete)
               ),
               onTap: (){
                Navigator.pushNamed(
                  context, 
                  '/memo/read',
                  arguments: memo.no,
                  );
               },
          );
        }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //등록 페이지로 전환
          Navigator.pushNamed(context,'/memo/insert');
        },
        child: Icon(Icons.create),
        ),  
    );
  }
}