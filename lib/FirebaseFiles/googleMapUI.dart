import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class googlemapUI extends StatefulWidget {
  const googlemapUI({Key? key}) : super(key: key);

  @override
  _GoogleMapUIState createState() => _GoogleMapUIState();
}

class _GoogleMapUIState extends State<googlemapUI> {
  late GoogleMapController mapController;
  late Marker _origin;
  late Marker _destination;
  late BitmapDescriptor myMarker;

  CameraPosition startingPosition =
      CameraPosition(target: LatLng(13.0837, 80.1750), zoom: 14.4746);

  @override
  void initState() {
    super.initState();
    setMarkerIcon().then((value) => _addMarker());
  }

  @override
  void dispose() {
    mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: startingPosition,
      zoomControlsEnabled: true,
      myLocationButtonEnabled: false,
      polylines: <Polyline>{
        const Polyline(
            polylineId: PolylineId('example_polyline'),
            color: Colors.blue,
            width: 5,
            geodesic: true,
            points: <LatLng>[
              LatLng(13.0500, 80.2121),
              LatLng(13.0837, 80.1750)
            ])
      },
      onMapCreated: ((controller) => mapController = controller),
      markers: {
        if (_origin != null) _origin,
        if (_destination != null) _destination
      },
    );
  }

  Future<void> setMarkerIcon() async {
    myMarker = await BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(size: Size(10, 10)), 'assets/scotty.png');
  }

  void _addMarker() {
    setState(() {
      _origin = Marker(
        markerId: MarkerId('origin'),
        infoWindow: InfoWindow(title: 'Origin'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
        position: LatLng(13.0500, 80.2121),
      );

      _destination = Marker(
        markerId: const MarkerId('destination'),
        infoWindow: const InfoWindow(title: 'Destination'),
        icon: myMarker,
        position: LatLng(13.0837, 80.1750),
      );
    });
  }
}
