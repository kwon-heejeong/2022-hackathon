import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:powerful_daegu/first.dart';
import 'package:powerful_daegu/second.dart';
import 'package:powerful_daegu/third.dart';
import 'package:powerful_daegu/main.dart';

class Map2 extends StatefulWidget {
  const Map2({Key? key}) : super(key: key);

  @override
  _Map2 createState() => _Map2();
}

class _Map2 extends State<Map2> {
  late GoogleMapController mapController;
  List<Marker> _markers = [];

  final LatLng _center = const LatLng(35.8696024, 128.5819201); //

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void initState() {
    super.initState();
    _markers.add(Marker(
        markerId: MarkerId("Market1"),
        draggable: true,
        position: LatLng(35.8696024, 128.5819201)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: Set.from(_markers),
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 20.0,
          ),
        ),
      ),
    );
  }
}
