// widgets/01_data_display.dart
import 'package:flutter/material.dart';

ListView dataDisplayPage() {
  return ListView(
    children: [
      // Text Widget
      Text(
        'This is cute',
         style:  TextStyle(
          color: Colors.pink,
          fontSize: 30,
          backgroundColor: Colors.white,
        ),
        textAlign: TextAlign.right,
      ),
      // Image Widget
      // assets에 선언된 경로에 있는 이미지를 불러오는 함수
      Image.asset('images/cute.jpg'),
         //Icon Widget
        Icon(
         Icons.favorite,
         color: Colors.pink,
         size : 50,
  ),
        Icon(
        Icons.access_alarm,
        color: Colors.green,
        size: 50,
  ),
    ],
  );
}

