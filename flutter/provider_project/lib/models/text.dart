import 'package:flutter/material.dart';

class Message with ChangeNotifier{
  String _msg = 'HI';
  String get msg => _msg;

  void changeMsg(msg){
    this._msg = msg;

    notifyListeners();
  }
}