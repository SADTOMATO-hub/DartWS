//widgets/02_textField.dart

import 'package:flutter/material.dart';

ListView textInputPage(BuildContext context){
  TextEditingController editingController = TextEditingController();
  return ListView(
     children: [
    Text('I Can Do It'),
    TextField(),
    TextField(
      decoration: InputDecoration(
        labelText: 'Input Name',
        helperText: 'Korean Language support',
      ),
        onSubmitted: (value){
          print('=============================== result : $value');
        },
    ),
    TextField(
      controller: editingController,
      decoration: InputDecoration(
        labelText:'input info',
      ),
    ),
    TextButton(
      onPressed: (){
        String value = editingController.text;
        print('Button : $value');
      },
      child: Text('확인'),
    ),
    TextField(
      controller: editingController,
    ),
  ],
  );
 
}