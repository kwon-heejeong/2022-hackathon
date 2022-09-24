import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent.dart';
import 'package:study2/first.dart';
import 'package:study2/second.dart';
import 'package:study2/third.dart';
import 'package:study2/main.dart';

class Map1 extends StatefulWidget {
  const Map1({Key? key}) : super(key: key);

  @override
  _Map1 createState() => _Map1();
}

class _Map1 extends State<Map1> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.8761838, 128.6052677); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Market2'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
