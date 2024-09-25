// MemoDBHelper.dart
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite/models/memo.dart';

class MemoDBHelper {
  //싱글톤
  static final MemoDBHelper _dbHelper 
                        = MemoDBHelper._init();

  MemoDBHelper._init(){}

  factory MemoDBHelper(){
    return _dbHelper;
  }                  

  //데이터베이스의 정보를 다루는 작업
  Database? _database; //쿼리문을 실행할 때만 동작하게 처리할 생각

  Future<Database> get database async{
    if (_database != null)  return _database!;

    _database = await initDatabase();
    return _database!;
  }
  
  Future<Database>initDatabase() async {
    String path
      = join(await getDatabasesPath(), 'memo.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
              CREATE TABLE memos(
              no INTEGER PRIMARY KEY AUTOINCREMENT,
              info TEXT
              )
          ''');
      }
    );
  }    
  //전체조회
Future<List<Memo>> getMemos() async{
  Database db = await database;
  List<Map<String,dynamic>> result
                         = await db.query('memos', orderBy: 'no'); //SELECT * FROM memos ORDER BY no
  return List.generate(result.length, (index){ //반복문과 결합한 리스트 타입
    Map<String, dynamic> memo = result[index];
    return Memo.from(memo);
  });//List<Memo> 
}
//단건조회
Future<Memo> getMemoInfo(int no) async{
  Database db = await database;
  List<Map<String,dynamic>> result
         = await db.query(
                          'memos',
                          where: 'no=?',
                          whereArgs: [no]
                          ); //SELECT * FROM memos WHERE NO = ?
Map<String, dynamic> memo = result[0];
return Memo.from(memo);//List<Memo> 
}
//등록
Future<int> insertMemo(Memo memo) async{
  Database db = await database;
  return await db.insert('memos', memo.toMap());
  //db.insert('memos', {'no' : memo.no, 'info' : memo.info}); 원래는 이 형태
}
//수정
Future<int> UpdateSelectionIntent(Memo memo) async{
  Database db = await database;
  return await db.update(
    'memos',
     memo.toMap(), //set절
     where: 'no=?',
     whereArgs: [memo.no],
  );
     /*
   UPDATE $Table
   for(var colunm in columns.entries){
      $Column.key = $Column.value,
   }
   WHERE $where
      */
}
//삭제
Future<int> deleteMemo(int no) async{
  Database db = await database;
  return await db.delete(
                     'memos',
                     where: 'no=?',
                     whereArgs: [no] 
                    );
}  
}