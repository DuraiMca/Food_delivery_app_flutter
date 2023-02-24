import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class samplemap extends StatefulWidget {
  const samplemap({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<samplemap> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  late LatLng currentPostion;

  CameraPosition startingPosition =
      CameraPosition(target: LatLng(13.0827, 80.2707), zoom: 14.4746);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: startingPosition,
          markers: markers,
          onMapCreated: _getUserLocation,
          zoomControlsEnabled: true,
        ),
      ),
    );
  }

  _getUserLocation(GoogleMapController controller) async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high));

    setState(() {
      currentPostion = LatLng(position.latitude, position.longitude);
      markers.add(Marker(
        markerId: MarkerId('1'),
        position: currentPostion,
        infoWindow: InfoWindow(
          title: 'my location',
          snippet: 'me',
        ),
      ));
       markers.add(Marker(
        markerId: MarkerId('1'),
        position: LatLng(13.0850,80.2101),
        infoWindow: InfoWindow(
          title: 'my location2',
          snippet: 'me',
        ),
      ));
    });
    
    
  }

  final nearbyCarsLocation = [
  LatLng(24.9286825, 67.0403249),
  LatLng(24.985577, 67.0661056), //24.9294892,67.0391903,18.73z
];

void _getNearByCars() {

  for (var i = 0; i < nearbyCarsLocation.length; i++) {
    var now = new DateTime.now().millisecondsSinceEpoch;
    markers.add(Marker(
      markerId: MarkerId(nearbyCarsLocation[i].toString() + now.toString()),
      position: nearbyCarsLocation[i],
      // infoWindow: InfoWindow(title: address, snippet: "go here"),
      ));
  }

}

}
