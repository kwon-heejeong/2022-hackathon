import 'package:flutter/material.dart';
import 'package:study2/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daegu Market Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      //home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Map with',
      style: optionStyle,
    ),
    Text(
      'Index 1: Food',
      style: optionStyle,
    ),
    Text(
      'Index 2: Stamp',
      style: optionStyle,
    ),
    Text(
      'Index 3: Talk',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Index 0',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Index 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Index 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Index 3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        fixedColor: Colors.amberAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
