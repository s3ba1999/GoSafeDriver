import 'package:get/get.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:gosafe_driver/src/models/travel.dart';

enum VehicleType { motorcycle, car, other }

class GetTravelController extends GetxController {
  Travel _travel;

  String _sourceName;
  String _destinyName;

  VehicleType vehicleType = VehicleType.car;

  LatLng lastMarkerPosition;
  Travel get travel => _travel;
  String get sourceName => _sourceName;
  String get destinyName => _destinyName;

  clear() {
    _travel = Travel();
    
    _sourceName = null;
    _destinyName = null;

    update();
  }

  updateTravel(Travel travel) {
    this._travel = travel;
    update();
  }

  changeAmount(double amount) {
    this._travel.amount = amount;
    update();
  }
}
