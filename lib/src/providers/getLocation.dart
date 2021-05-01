import 'dart:async';

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:firebase_database/firebase_database.dart';

class GetLocationController extends GetxController {
  Position position;
  StreamSubscription<Position> subscription;
  final database = FirebaseDatabase.instance.reference().child('drivers');
  
  GetLocationController() {
    subscription = Geolocator.getPositionStream(
      forceAndroidLocationManager: true,
      desiredAccuracy: LocationAccuracy.medium,
      intervalDuration: Duration(milliseconds: 300),
    ).listen((lastPosition) {
      if (lastPosition == null) return;
      print(this.position = lastPosition);
      database.child('cari').update(position.toJson());
      update();
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
    update();
  }
}
