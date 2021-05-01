import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GoogleMap(
        mapType: MapType.terrain,
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        initialCameraPosition: CameraPosition(
          zoom: 15,
          target: LatLng(-17.7829, -63.1810),
        ),
      ),
    );
  }
}
