import 'package:flutter/material.dart';

import '../mappers/MemoDBHelper.dart';
import '../models/memo.dart';

class InsertScreen extends StatefulWidget{
  final MemoDBHelper dbHelper 
                        = MemoDBHelper();

  
  @override
  State<InsertScreen> createState() => _InsertScreen();  
}
class _InsertScreen extends State<InsertScreen>{
  final TextEditingController _memoEditingCon
                               = TextEditingController();
  final GlobalKey<FormState> _formKey
                                = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메모등록'),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical:  50, horizontal:  10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Form(
            key: _formKey,//위젯을 구분하는 고유 값
            child: TextFormField(
                controller: _memoEditingCon,
                decoration: InputDecoration(
                  labelText: '정보',
                  helperText: '기록하고자 하는 정보',
                  border: OutlineInputBorder(), 
                ),
                validator: (Value){//값을 확인함
                  if(Value == null || Value.isEmpty){
                    return '값을 입력하십시오. 휴먼'; //잘못 입력한 경우
                  }
                  return null; //이 validator 특이한 점은 null이 반환될 경우, 정상적으로 실행되었다고 판단한다.
                },
              ), //회원가입에서 많이 쓰는 기능
            ),
            Row(
              children: [
                TextButton(onPressed:  () async {
                  if(_formKey.currentState!.validate()){ //연결된 위젯의 현재상태
                    //모든 항목에 정상적인 값이 입력된 경우
                    String info = _memoEditingCon.text;
                    Memo memo = Memo(info: info);
                    int result = await widget.dbHelper.insertMemo(memo);
                    if(result > 0){
                      Navigator
                      .pushNamedAndRemoveUntil
                      (context, '/memo/list', (route)=>false); //push되는 라우터 아래의 경로를 모두 제거 => 실상 새로 만듦
                    }
                  } 
                },
                child: Text('등록')
                ),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('취소')
                ),
              ],
              )
          ],
        )
      ),
    );
  }
  
}