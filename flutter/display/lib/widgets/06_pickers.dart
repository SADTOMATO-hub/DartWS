import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PickerPage(),
    );
  }
}

class PickerPage extends StatefulWidget {

  @override
  State<PickerPage> createState() => _PickerPage();
}

class _PickerPage extends State<PickerPage>{
  int _curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
      ),
      body: _getCurrentPage(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _curIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: _curIndex == 0 ? Colors.blue : Colors.black54,
              ),
              label: "home"
            ),
          BottomNavigationBarItem(
              icon: Icon(        
                Icons.iso,
                size: 30,
                color: _curIndex == 1 ? Colors.blue : Colors.black54,
              ),
              label: "date"
            ),
          BottomNavigationBarItem(
              icon: Icon(        
                Icons.arrow_right_alt,
                size: 30,
                color: _curIndex == 2 ? Colors.blue : Colors.black54,
              ),
              label: "time"
            ),           
         ]
      ),
    );
  }

  Widget _getCurrentPage() {

    late Widget page;
    switch (_curIndex) {
      case 0:
        page = homePage();
        break; 
      case 1:
        page = PickerDemo('Date');
        break;
      case 2:
        page = PickerDemo('Time');
        break;
    }
    return page;
  }  
}

Container homePage() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        'Dialog Page',
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }

class PickerDemo extends StatefulWidget {
  late dynamic _selelctedClass;
  
  PickerDemo(String selected){
    switch(selected){
      case 'Date':
        _selelctedClass = _datePickerState();
        break;
      case 'Time' :
        _selelctedClass = _timePickerState();
        break;      
    }
  }

  @override
  State<PickerDemo> createState() => _selelctedClass;

}

// 1. DatePicker
class _datePickerState extends State<PickerDemo>{  
  DateTime? _selectedDate; //날짜를 관리할 수 있게해주는 객체
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Show DatePicker'),
                onPressed: () {//모든 버튼에는 onPressed가 존재한다.
                  Future/*비동기, 나중에 값을 반환할 것이다*/<DateTime?> selectedDate = showDatePicker(
                    context: context,
                    initialDate: DateTime.tryParse('2024-12-25'),
                    firstDate: DateTime(1900), //달력이 시작될 첫날
                    lastDate: DateTime(2900),  //달력이 끝날 마지막날
                    builder: (context, child){ //builder => 위젯을 만들어주는 속성
                        return Theme(
                          data: ThemeData.from(colorScheme: ColorScheme.fromSeed
                                                (seedColor: Colors.deepPurpleAccent)), 
                          child: child!, //실제로 실행되는 부분
                          );
                    },
                  );
                    selectedDate.then((date){
                      setState(() {
                        _selectedDate = date;
                    });
                  });
                }, 
              ),
              if (_selectedDate != null)
                Text('${_selectedDate?.year}-${_selectedDate?.month}-${_selectedDate?.day}'),
            ],
          ));
  }  
}

// 2. TimePicker
class _timePickerState extends State<PickerDemo>{  //시간 = 알람에서 많이 씀
  TimeOfDay? _selectedTime;
  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                child: const Text('Show TimePicker'),
                onPressed: () {
                  showTimePicker(
                   context: context,
                   initialTime: TimeOfDay.now(),
                   barrierColor: Colors.pinkAccent
                   ).then((time){
                    setState(() {
                       _selectedTime = time;
                     });
                   });
                },
              ),
              if (_selectedTime != null)
                Text('${_selectedTime?.hour}:${_selectedTime?.minute}'),
            ],
          ));
  }  
}