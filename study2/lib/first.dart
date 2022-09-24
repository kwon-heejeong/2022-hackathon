import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:study2/map2.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);
  @override
  _First createState() => _First();
}

class _First extends State<First> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.8761838, 128.6052677); //칠성시장

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    home:
    Map2();
    return Scaffold(

        //body: Center(

        //Map2();
        //Navigator.push(
        //        context,
        //      MaterialPageRoute(builder: (context) => const Map2()),
        //  );
        //home: Map2();
        //child: Text('First Page'),
        //)
        );
  }
}
