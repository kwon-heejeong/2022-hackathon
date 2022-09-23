import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:study2/main.dart';
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:google_maps_flutter/google_maps_flutter.dart';
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);
  @override
  _First createState() => _First();
}

class _First extends State<First> {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(35.8761838, 128.6052677); //칠성시장

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            //child: Text('First Page'),
            ));
=======
      child: Text('First Page'),
    ));
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
      child: Text('First Page'),
    ));
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
=======
      child: Text('First Page'),
    ));
>>>>>>> 9b46ce6abcba0ab248bf33b251eda88a167afb34
  }
}
