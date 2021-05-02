import 'package:mapbox_api/mapbox_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:gosafe_driver/src/env.dart';

class Mapbox {
  static Mapbox _instance = Mapbox();
  static Mapbox get instance => _instance;

  final _polyline = PolylinePoints();

  MapboxApi _mapboxApi = MapboxApi(accessToken: MAPBOX_APIKEY);

  Future<List<LatLng>> getRouteFromCoords({
    LatLng source,
    LatLng destiny,
  }) async {
    try {
      final res = await _mapboxApi.directions.request(
        steps: true,
        language: 'es',
        overview: NavigationOverview.FULL,
        profile: NavigationProfile.DRIVING,
        geometries: NavigationGeometries.POLYLINE,
        coordinates: [
          source.toJson(),
          destiny.toJson(),
        ],
      );

      if (res.error != null) throw res.error;

      return _polyline
          .decodePolyline(res.routes.first.geometry)
          .map((p) => LatLng(p.latitude, p.longitude))
          .toList();
    } catch (e) {
      print(e);
    }

    return [];
  }

  Future<List<GeocoderFeature>> getSuggestions({
    String search,
    LatLng point,
  }) async {
    try {
      final res = await _mapboxApi.forwardGeocoding.request(
        endpoint: GeocoderEndpoint.PLACES,
        limit: 5,
        country: ['BO'],
        fuzzyMatch: true,
        autocomplete: true,
        searchText: search,
      );

      if (res.error != null) throw res.error;
      return res.features;
    } catch (e) {
      print(e);
    }
    return [];
  }
}
