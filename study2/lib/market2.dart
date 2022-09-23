import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Market2 extends StatefulWidget {
  const Market2({Key? key}) : super(key: key);
  @override
  _Market2 createState() => _Market2();
}

class _Market2 extends State<Market2> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Market2'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _selectedIndex, //현재 선택된 Index
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'index 0',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: 'index 1',
              icon: Icon(Icons.music_note),
            ),
            BottomNavigationBarItem(
              label: 'index 2',
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: 'index 3',
              icon: Icon(Icons.library_books),
            ),
          ],
        ),
        body: Center(
          child: Text('Market 2 Page'),
        ));
  }
}
