import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'package:gosafe_driver/src/models/travel.dart';
import 'package:gosafe_driver/src/providers/mapbox.dart';
import 'package:gosafe_driver/src/providers/getLocation.dart';

class MapView extends GetView<GetLocationController> {
  final Travel travel;
  final Set<Marker> markers = Set.from([]);
  final Set<Polyline> polylines = Set.from([]);

  Future<BitmapDescriptor> buildIcon(String asset) async {
    return await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(10, 10)),
      asset,
    );
  }

  Future<List<BitmapDescriptor>> loadIcons() {
    return Future.wait([
      buildIcon('assets/source.png'),
      buildIcon('assets/destiny.png'),
    ]);
  }

  MapView({@required this.travel}) {
    loadIcons()
        .then((icons) {
          print(icons.first.toJson());
          markers.addAll([
            Marker(
              icon: icons.first,
              position: travel.source,
              markerId: MarkerId('source'),
            ),
            Marker(
              icon: icons.last,
              position: travel.destiny,
              markerId: MarkerId('destiny'),
            ),
          ]);
        })
        .catchError((error) => print(error))
        .whenComplete(() => print('complete'));
  }

  Future<List<List<LatLng>>> getRoutes() async {
    final position = controller.position;

    return Future.wait([
      Mapbox.instance.getRouteFromCoords(
        source: travel.source,
        destiny: travel.destiny,
      ),
      Mapbox.instance.getRouteFromCoords(
        source: LatLng(position.latitude, position.longitude),
        destiny: travel.source,
      ),
    ]);
  }

  void loadRoutes(List<List<LatLng>> routes) {
    polylines.addAll([
      Polyline(
        width: 3,
        points: routes.first,
        color: Color(0xff26AE35),
        polylineId: PolylineId('request'),
      ),
      Polyline(
        width: 3,
        points: routes.last,
        color: Color(0xff338EFC),
        polylineId: PolylineId('way'),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final LatLng middlePoint = LatLng(
      (travel.source.latitude + travel.destiny.latitude) / 2,
      (travel.destiny.longitude + travel.destiny.longitude) / 2,
    );

    return FutureBuilder<List<List<LatLng>>>(
      future: this.getRoutes(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return Center(child: CircularProgressIndicator.adaptive());
        }

        loadRoutes(snap.data);

        return Container(
          child: GoogleMap(
            mapType: MapType.terrain,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            //
            markers: this.markers,
            polylines: this.polylines,
            //
            initialCameraPosition: CameraPosition(
              zoom: 14,
              target: middlePoint,
            ),
          ),
        );
      },
    );
  }
}
