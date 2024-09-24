import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  int _curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App Name'),
        ),
        body: _getCurrentPage(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _curIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
                color: _curIndex == 0 ? Colors.blue : Colors.black,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_emoticon_sharp,
                size: 30,
                color: _curIndex == 2 ? Colors.blue : Colors.black,
              ),
              label: "drop",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airline_seat_individual_suite,
                size: 30,
                color: _curIndex == 3 ? Colors.blue : Colors.black,
              ),
              label: "floating",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarms_outlined,
                size: 30,
                color: _curIndex == 4 ? Colors.blue : Colors.black,
              ),
              label: "popup",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.heart_broken,
                size: 30,
                color: _curIndex == 4 ? Colors.blue : Colors.black,
              ),
              label: "icon",
            )
          ],
        ));
  }

  Widget _getCurrentPage() {
    late Widget page;
    switch (_curIndex) {
      case 0:
        page = homePage();
        break;
      case 1:
        page = ButtonDemo('DropdownButton');
        break;
      case 2:
        page = ButtonDemo('FloatingAxtionButton');
        break;
      case 3:
        page = ButtonDemo('PopupMenuButton');
        break;
      case 4:
        page = ButtonDemo('IconButton');
        break;     
    }
    return page;
  }
}

Container homePage() {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'Home Page',
      style: TextStyle(color: Colors.amber, fontSize: 30),
    ),
  );
}

// ButtonDemo
class ButtonDemo extends StatefulWidget {
  late dynamic _buttonClass;

  ButtonDemo(String selected) {
    switch (selected) {
      case 'DropdownButton':
        _buttonClass = _dropdownButtonState();
        break;
      case 'FloatingAxtionButton':
        _buttonClass = _floatingActionButtonnState();
        break;
      case 'PopupMenuButton':
        _buttonClass = _popupMenuButtonState();
        break;
      case 'IconButton':
        _buttonClass = _iconButtonState();
        break;
    }
  }

  @override
  State<ButtonDemo> createState() => _buttonClass;
}

// 1. DropdownButton
class _dropdownButtonState extends State<ButtonDemo> {
  String? _selectedValue = 'Pineapple slice';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        value: _selectedValue,// 지금 현재 보여지는 데이터
      
        onChanged:(String? newValue){
          setState(() {
            _selectedValue = newValue;
          });
        },
        items: <String>['Pineapple slice', 'grape', 'orange']
            .map<DropdownMenuItem<String>>((String value){ // 새로운 배열을 만들때 사용하는 메서드(map)
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value)
              );
            }).toList(),
        icon: const Icon(Icons.arrow_drop_down_circle_outlined),
        iconSize: 30,
        style: const TextStyle(color: Colors.deepPurpleAccent),
    ),
    );
  }
}

// 2. FloatingActionButton
class _floatingActionButtonnState extends State<ButtonDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Text('Press to button'),
      ),
      floatingActionButton: FloatingActionButton(
                            onPressed:(){
                              //버튼을 클릭
                            },
                            child: Icon(Icons.add), 
                            ),
    );
  }
}

// 3. PopupMenuButton
enum RGB { red, green, blue }

class _popupMenuButtonState extends State<ButtonDemo> {
  RGB _selection = RGB.red;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton<RGB>(
        onSelected: (RGB result){
          setState(() {
            _selection = result;
          });
        },
        itemBuilder: (BuildContext context) => 
        <PopupMenuEntry<RGB>>[
          PopupMenuItem<RGB>(
            value: RGB.red,
            child: Text('Red'),
          ),
          PopupMenuItem<RGB>(
            value: RGB.green,
            child: Text('Green'),
          ),
          PopupMenuItem<RGB>(
            value: RGB.blue,
            child: Text('Blue'),
          )
        ],
      ),
    );
  }
}

// 4. IconButton
class _iconButtonState extends State<ButtonDemo> {
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          IconButton(
            icon: Icon(Icons.add_box),
            iconSize: 40,
            tooltip: 'Add 1',
            onPressed: () {
              setState(() {
                _number++;
              });
            },
          ),
          Text('Number : $_number'),
        ],
      ),
    );
  }
}
