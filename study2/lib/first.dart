import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);
  @override
  _First createState() => _First();
}

class _First extends State<First> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('First Page'),
    ));
  }
}
