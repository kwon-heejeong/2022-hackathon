import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powerful_daegu/accent1.dart';
import 'package:powerful_daegu/first.dart';
import 'package:powerful_daegu/second.dart';
import 'package:powerful_daegu/third.dart';
import 'package:powerful_daegu/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Market1 extends StatefulWidget {
  const Market1({Key? key}) : super(key: key);
  @override
  _Market1 createState() => _Market1();
}

class _Market1 extends State<Market1> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.869394, 128.580801); //칠성시장

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  int _selectedIndex = 0;
  List _pages = [First(), Second(), Third(), Accent1()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Market1'),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),

      /*body: Center(
        //child: Text('Market 2 Page'),
        child: _pages[_selectedIndex], // 페이지와 연결
      ),*/
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
            label: 'index 3', icon: Icon(Icons.library_books),
            //onTap: () {
            //print('Accent');
            //Navigator.push(
            //context,
            //MaterialPageRoute(builder: (context) => const Accent()),
            //);
            //Navigator.pop(context);
            //},
          ),
        ],
      ),
      //body: Center(
      // child: Text('Market 2 Page'),
      //)
    );
  }

  void _onItemTapped(int index) {
    // state 갱신
    setState(() {
      _selectedIndex = index; // index는 item 순서로 0, 1, 2로 구성
    });
  }
}
