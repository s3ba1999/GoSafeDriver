import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Travel {
  Travel({
    this.id,
    this.amount,
    this.source,
    this.destiny,
    this.dateTime,
    this.clientId,
    this.driverid,
    this.sourceName,
    this.destinyName,
  });

  int id;
  int clientId;
  int driverid;
  int dateTime;

  double amount;
  LatLng source;
  LatLng destiny;

  String sourceName;
  String destinyName;

  String toRawJson() => json.encode(toJson());
  factory Travel.fromRawJson(String str) => Travel.fromJson(json.decode(str));

  factory Travel.fromJson(Map json) {
    return Travel(
      id          : json["id"],
      dateTime    : json["dateTime"],
      clientId    : json["clientId"],
      driverid    : json["driverid"],
      amount      : json["amount"].toDouble(),
      source      : LatLng.fromJson(json['source']),
      destiny     : LatLng.fromJson(json['destiny']),
      sourceName  : json['sourceName'],
      destinyName : json['destinyName'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id"          : id,
      "amount"      : amount,
      "dateTime"    : dateTime,
      "clientId"    : clientId,
      "driverid"    : driverid,
      "source"      : source?.toJson(),
      "destiny"     : destiny?.toJson(),
      "sourceName"  : sourceName,
      "destinyName" : destinyName,
    };
  }
}
