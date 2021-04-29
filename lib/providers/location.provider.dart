import 'dart:io';
import 'package:path/path.dart' as Path;
import 'package:firebase_database/firebase_database.dart';

class LocationProvider{
  final _database = FirebaseDatabase.instance.reference().child('drivers');

    DatabaseReference get reference => _database;

  create(dynamic location) async {
    _database.push().set(location);
  }
}