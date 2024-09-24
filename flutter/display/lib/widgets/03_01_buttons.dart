//widgets/03_01_buttons.dart

import 'package:flutter/material.dart';

Column buttonListOne(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      wrapButton(textButton()),
      wrapButton(outlinedButton()),
      wrapButton(elevatedButton()),
      wrapButton(textButtonIcon()),
      overflowBar()
    ],
  );
}
Padding wrapButton(Widget button){
  return Padding(
    padding: const EdgeInsets.all(50),
    child: button,
  );
}

// 1.TextButton <- FlatButon
TextButton textButton(){
  return TextButton(
    onPressed: (){
      //버튼을 클릭 : 필수
    },
    onLongPress: (){
       //버튼을 길게 클릭

    },
    style: TextButton
                    .styleFrom(
                      backgroundColor: Colors.lime[50],
                      //텍스트 컬러
                      foregroundColor: Colors.pink[200]),

    child: Text(
      'Text Button',
      style: TextStyle(
        fontSize: 20.0,
      ),
    ) ,
  );
}

// 2.OutlinedButton <- OutlineButton
OutlinedButton outlinedButton(){
  //OutlineBotton => OutlineButton
  return OutlinedButton(
    onPressed: (){
      //버튼을 클릭
    },
    onLongPress: (){
      //버튼을 길게 클릭
    },
    style: OutlinedButton
            .styleFrom(
                      foregroundColor: Colors.deepOrange[50],
                      backgroundColor: Colors.red,
                      side: BorderSide(
                        color: Colors.white,
                        width: 5.0,
                        style: BorderStyle.solid,
                      )
            ),
    child: Text(
                'OutlineButton Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
    ),
  );
}

// 3.ElevatedButton <- RaiseButton
ElevatedButton elevatedButton(){
  return ElevatedButton(
    onPressed: (){
      /* 버튼을 클릭 했을때 */
    },
    onLongPress: (){
      /* 버튼을 길게 눌렀을때 */
    },
    style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.amber[50],
                          backgroundColor: Colors.blue[200],
                          elevation: 20.0,
    ),
    child: Text(
                'ElevatedButtion',
                style: TextStyle(
                  fontSize: 20
                )
    ),
  );
}

// 4. TextButton에 icon 넣기
TextButton textButtonIcon(){
  return TextButton.icon(
    //onPressed: (){},
    onPressed: null,
    // 버튼을 비활성화 하는 경우 
    label: Text('Go Home'),
    icon: Icon(
      Icons.home,
      size : 50
    ),
    style: TextButton.styleFrom(
      foregroundColor: Colors.blue[600],
      backgroundColor: Colors.yellowAccent[100],

      //비활성화 된 버튼의 색상을 바꿀때는 disabled- 사용
      disabledForegroundColor: Colors.pink.withOpacity(0.20),
      disabledBackgroundColor: Colors.pink.withOpacity(0.20),
    ),
    );
}
//5. OverflowBar : 화면에 끝정렬 해서 버튼 나타나게 함
OverflowBar overflowBar(){
 return OverflowBar(
    alignment: MainAxisAlignment.end, // 자식들의 정렬방식
    spacing: 20, // 자식들 간의 간격
    // overflow인 경우
    overflowAlignment: OverflowBarAlignment.end, //자식들의 정렬방식
    overflowSpacing: 5,// 자식들 간의 간격
    children: [
      textButton(),
      outlinedButton(),
      textButtonIcon()
    ],
 );
}
