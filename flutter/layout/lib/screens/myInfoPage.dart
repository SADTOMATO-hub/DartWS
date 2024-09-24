import 'package:flutter/material.dart';
import 'package:layout/screens/loginPage.dart';
import '../model/user.dart';

class Myinfopage extends StatelessWidget {
  late UserVO myInfo;

  Myinfopage({required this.myInfo});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('love'),
      ),
      body : SingleChildScrollView(
        child: Column(
          children: [
            Table(//공통된 레이아웃을 적용하고 싶을 경우
                  border: TableBorder.all(),
                  columnWidths:const { //map 형태
                    //0: IntrinsicColumnWidth(), 
                    //해당 세로 줄에 해당하는 칸들의 크기에 따라서 가로 길이를 설정
                    0: FixedColumnWidth(150),
                    //특정 픽셀 만큼을 가로 길이로 설정
                    1:FlexColumnWidth(),
                    //나머지 세로 줄이 차지하고 남은 공간 전체를 가로 길이로 고정
                  },
                  children: [
                     for(var item in myInfo.toMap().entries)
                     getItemField(item.key, item.value)
                  ],    
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange),
              onPressed: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute( 
                    builder: (context)=> Loginpage()
                  )
                  );
             },
             child: Text('로그아웃')
             )
          ],
        ),
        
      ),
    );
  }
  
}
TableRow getItemField(String name, String? data){
  return TableRow(
     children: [
                  TableCell(
                    child: Text(
                      '$name',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      )
                  ),
                  TableCell(
                    child: Padding(
                     padding: EdgeInsets.all(10),
                    child: Text(
                      '$data',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                      textAlign: TextAlign.left,
                      )
                      ),
                    )
                  ]
  );
}