import 'package:flutter/material.dart';
import './widgets/01_data_display.dart';
import './widgets/02_textField.dart';
import 'widgets/03_01_buttons.dart';
import 'widgets/03_02_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Display Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
          useMaterial3: true),
     // home: MyHomePage(),
     home: ButtonPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                Icons.article,
                size: 30,
                color: _curIndex == 1 ? Colors.blue : Colors.black,
              ),
              label: "datas",
            ),
             BottomNavigationBarItem(
              icon: Icon(
                Icons.mode_edit,
                size: 30,
                color: _curIndex == 2 ? Colors.blue : Colors.black,
              ),
              label: "textField",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
                size: 30,
                color: _curIndex == 3 ? Colors.blue : Colors.black,
              ),
              label: "list",
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
        page = dataDisplayPage();
        break;
      case 2:
        page = textInputPage(context);
        break;  
      case 3:
        page = buttonListOne();
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
