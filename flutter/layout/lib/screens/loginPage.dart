// TODO Implement this library.

import 'package:flutter/material.dart';
import 'package:layout/model/user.dart';
import 'package:layout/screens/myInfoPage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>{
  final TextEditingController _idEditingCon 
                                   = TextEditingController();
  final TextEditingController _pwdEditingCon
                                   = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('love'),
    ),
    body : Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //아이디를 입력 받는 위젯
          TextField(
            //onSubmitted: , //enter와 함께 값이 입력되는 것
            controller: _idEditingCon,//개별 프로그램의 값을 가지는 객체
            decoration: const InputDecoration(
              labelText: '아이디',
              labelStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
          ),
          //비밀번호를 입력 받는 위젯
          TextField(
            controller: _pwdEditingCon,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: '비밀번호',
              labelStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(),
            ),
          ),
          //로그인, 취소 각각을 처리하는 위젯
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){
                  UserVO loginVO = UserVO()
                                    ..userId = _idEditingCon.text
                                    ..passWord = _pwdEditingCon.text;
                  Navigator.pushReplacement( //대체하는 방식이라 뒤로 가기가 안 됨
                    context,
                    MaterialPageRoute(builder: (ctx)=>Myinfopage(myInfo : loginVO)
                    )
                  );
                  String id = _idEditingCon.text;
                  String pwd = _pwdEditingCon.text;
                  print('$id, $pwd');
                }, 
                child: Text('로그인')
                ),
              TextButton(onPressed: (){
                _idEditingCon.clear();
                _pwdEditingCon.clear();
              }, 
              child: Text('취소'))
            ],
          )
        ],
      ),
    ),
   );
  }
}