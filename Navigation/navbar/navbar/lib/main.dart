import 'package:flutter/material.dart';
import 'package:navbar/second.dart';
import 'third.dart';
import 'fourth.dart';
import 'first.dart';

void main() {
  runApp(MaterialApp(
    title: 'Hello',
    debugShowCheckedModeBanner: false,
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _index = 0;
  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;
    switch (_index) {
      case 0:
        screen = First();
        break;
      case 1:
        screen = Second();
        break;
      case 2:
        screen = Third();
        break;
      case 3:
        screen = Fourth();
    }
    return Scaffold(
        body: SizedBox.expand(child: screen),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
               icon: Icon(Icons.menu),
              title: Text(''),
            ),
            BottomNavigationBarItem(
           icon:Icon(Icons.near_me),
              title: Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('')),
          ],
          type: BottomNavigationBarType.shifting,
          iconSize: 25,
          currentIndex: _index,
          onTap: _onItemTapped,
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
        ));
  }
}
