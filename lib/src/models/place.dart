import 'dart:convert';

class Place {
  Place({
    this.id,
    this.title,
    this.destiny,
    this.address,
    this.mapView,
    this.position,
    this.distance,
    this.resultType,
  });

  bool destiny;
  
  String id;
  String title;
  String resultType;

  int distance;

  MapView mapView;
  Address address;
  Position position;

  String toRawJson() => json.encode(toJson());
  factory Place.fromRawJson(String str) => Place.fromJson(json.decode(str));

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id          : json["id"],
      title       : json["title"],
      distance    : json["distance"],
      resultType  : json["resultType"],
      address     : json['address'] == null ? null : Address.fromJson(json["address"]),
      mapView     : json['mapView'] == null ? null : MapView.fromJson(json["mapView"]),
      position    : json['position'] == null ? null : Position.fromJson(json["position"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "distance": distance,
      "resultType": resultType,
      "address": address?.toJson(),
      "mapView": mapView?.toJson(),
      "position": position?.toJson(),
    };
  }
}

class Address {
  Address({
    this.label,
  });

  String label;

  String toRawJson() => json.encode(toJson());
  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  Map<String, dynamic> toJson() => {"label": label};

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(label: json["label"]);
  }
}

class MapView {
  MapView({
    this.west,
    this.east,
    this.south,
    this.north,
  });

  double west;
  double east;
  double south;
  double north;

  String toRawJson() => json.encode(toJson());
  factory MapView.fromRawJson(String str) => MapView.fromJson(json.decode(str));

  factory MapView.fromJson(Map<String, dynamic> json) {
    return MapView(
      west: json["west"].toDouble(),
      east: json["east"].toDouble(),
      south: json["south"].toDouble(),
      north: json["north"].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "west": west,
      "east": east,
      "south": south,
      "north": north,
    };
  }
}

class Position {
  Position({
    this.lat,
    this.lng,
  });

  double lat;
  double lng;

  factory Position.fromRawJson(String str) {
    return Position.fromJson(json.decode(str));
  }

  String toRawJson() => json.encode(toJson());

  factory Position.fromJson(json) {
    if (json is List) {
      return Position(
        lat: json.first,
        lng: json.last,
      );
    }

    return Position(
      lat: json["lat"].toDouble(),
      lng: json["lng"].toDouble(),
    );
  }

  Object toJson() {
    return <double>[lat, lng];
    // return {
    //   "lat": lat,
    //   "lng": lng,
    // };
  }
}
