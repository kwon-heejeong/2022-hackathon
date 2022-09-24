import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Market1 extends StatefulWidget {
  const Market1({Key? key}) : super(key: key);
  @override
  _Market1 createState() => _Market1();
}

class _Market1 extends State<Market1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(tr('Market_1')),
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
              label: tr('index 0'),
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: tr('index 1'),
              icon: Icon(Icons.music_note),
            ),
            BottomNavigationBarItem(
              label: tr('index 2'),
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: tr('index 3'),
              icon: Icon(Icons.library_books),
            ),
          ],
        ),
        body: Center(
          child: Text(tr('Market_1')),
        ));
  }
}
