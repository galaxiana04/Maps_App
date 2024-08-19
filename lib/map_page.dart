import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition : CameraPosition(
        target:LatLng (-8.4310054, 113.5508204),
        zoom: 15,
      ),
      markers: {
      Marker(
        markerId: MarkerId('Pantai Papuma'),
        position: LatLng(-8.4310054, 113.5508204),
        infoWindow: InfoWindow(title: 'Pantai Papuma'),
      ),
      }, 
    );
  }
}