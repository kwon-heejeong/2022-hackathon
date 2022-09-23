import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Third extends StatefulWidget {
  const Third({Key? key}) : super(key: key);
  @override
  _Third createState() => _Third();
}

class _Third extends State<Third> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Third Page'),
    ));
  }
}
