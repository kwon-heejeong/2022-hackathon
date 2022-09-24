import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:study2/accent.dart';
import 'package:study2/first.dart';
import 'package:study2/marketfood2.dart';
import 'package:study2/third.dart';
import 'package:study2/main.dart';

class Marketfood2 extends StatefulWidget {
  const Marketfood2({Key? key}) : super(key: key);

  @override
  _Marketfood2 createState() => _Marketfood2();
}

class _Marketfood2 extends State<Marketfood2> {
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
      position: LatLng(35.8762155, 128.6038172),
      infoWindow: InfoWindow(
        //popup info
        title: '정화네 하우스 ',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueViolet), //Icon for Marker
    ));
    _markers.add(Marker(
      markerId: MarkerId("칠성식당"),
      draggable: true,
      position: LatLng(35.8751854, 128.6035277),
      infoWindow: InfoWindow(
        //popup info
        title: '칠성식당',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
    _markers.add(Marker(
      markerId: MarkerId("순한우곰탕"),
      draggable: true,
      position: LatLng(35.8759985, 128.6025088),
      infoWindow: InfoWindow(
        //popup info
        title: '순한우곰탕',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('market_2'.tr()),
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
