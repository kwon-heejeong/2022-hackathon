import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent1.dart';
import 'package:study2/first.dart';
import 'package:study2/marketfood1.dart';
import 'package:study2/third1.dart';
import 'package:study2/main.dart';

class Map1 extends StatefulWidget {
  const Map1({Key? key}) : super(key: key);

  @override
  _Map1 createState() => _Map1();
}

class _Map1 extends State<Map1> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.876655, 128.604625); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("정화네 하우스"),
        draggable: true,
        position: LatLng(35.8762155, 128.6038172)));
    _markers.add(Marker(
        markerId: MarkerId("칠성식당"),
        draggable: true,
        position: LatLng(35.8751854, 128.6035277)));
    _markers.add(Marker(
        markerId: MarkerId("순한우곰탕"),
        draggable: true,
        position: LatLng(35.8759985, 128.6025088)));
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
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 30.0,
          ),
        ),
      ),
    );
  }
}
