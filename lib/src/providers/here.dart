import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:gosafe_driver/src/env.dart';
import 'package:gosafe_driver/src/models/place.dart';
import 'package:gosafe_driver/src/models/reversePlace.dart';


class Here {
  static final _instance = Here();
  static Here get instance => _instance;

  Future<List<Place>> getSuggestions(String query) async {
    if (query.isEmpty) return [];
    try {
      final res = await http.get(Uri.parse(
        '$HERE_URL?at=-17.7829,-63.1810&lang=es&apiKey=$HERE_APIKEY&q=$query',
      ));

      List items = json.decode(res.body)['items'];

      return items.map((item) => Place.fromJson(item)).toList();
    } catch (e) {
      print(e);
    }

    return [];
  }

  Future<List<ReversePlace>> reverseGeoCode(LatLng loc) async {
    try {
      final res = await http.get(Uri.parse(
        '$HERE_REV_URL?lang=es-ES&apiKey=$HERE_APIKEY&at=${loc.latitude},${loc.longitude}',
      ));

      List items = json.decode(res.body)['items'];

      return items.map((item) => ReversePlace.fromJson(item)).toList();
    } catch (e) {
      print(e);
    }
    return [];
  }
}
