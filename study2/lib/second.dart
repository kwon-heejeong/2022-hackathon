import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);
  @override
  _Second createState() => _Second();
}

class _Second extends State<Second> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text('Second Page'),
    ));
  }
}
