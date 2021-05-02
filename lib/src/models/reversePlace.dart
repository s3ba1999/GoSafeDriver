import 'dart:convert';

class ReversePlace {
  ReversePlace({
    this.id,
    this.title,
    this.access,
    this.address,
    this.position,
    this.distance,
    this.resultType,
    this.categories,
  });

  int distance;

  String id;
  String title;
  String resultType;

  Address address;
  Position position;

  List<Position> access;
  List<Category> categories;

  factory ReversePlace.fromRawJson(String str) {
    return ReversePlace.fromJson(json.decode(str));
  }

  String toRawJson() => json.encode(toJson());

  factory ReversePlace.fromJson(Map<String, dynamic> json) {
    return ReversePlace(
      id          : json["id"],
      title       : json["title"],
      distance    : json["distance"],
      resultType  : json["resultType"],
      
      address     : Address.fromJson(json["address"]),
      position    : Position.fromJson(json["position"]),

      access      : json['access'] != null 
                      ? List<Position>.from(json["access"].map((x) => Position.fromJson(x)))
                      : null,
      categories  : json['categories'] != null
                      ? List<Category>.from(json["categories"].map((x) => Category.fromJson(x)))
                      : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id"          : id,
      "title"       : title,
      "distance"    : distance,
      "resultType"  : resultType,
      "address"     : address.toJson(),
      "position"    : position.toJson(),
      "access"      : List<dynamic>.from(access.map((x) => x.toJson())),
      "categories"  : List<dynamic>.from(categories.map((x) => x.toJson())),
    };
  }
}

class Position {
  double lat, lng;
  Position({this.lat, this.lng});

  factory Position.fromRawJson(String str) {
    return Position.fromJson(json.decode(str));
  }

  String toRawJson() => json.encode(toJson());

  factory Position.fromJson(Map<String, dynamic> json) {
    return Position(
      lat: json["lat"].toDouble(),
      lng: json["lng"].toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {"lat": lat, "lng": lng};
}

class Address {
  Address({
    this.city,
    this.label,
    this.state,
    this.street,
    this.county,
    this.district,
    this.countryCode,
    this.countryName,
  });

  String city;
  String label;
  String state;
  String county;
  String street;
  String district;
  String countryName;
  String countryCode;

  String toRawJson() => json.encode(toJson());
  factory Address.fromRawJson(String str) => Address.fromJson(json.decode(str));

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      city        : json["city"],
      label       : json["label"],
      state       : json["state"],
      county      : json["county"],
      street      : json["street"],
      district    : json["district"],
      countryCode : json["countryCode"],
      countryName : json["countryName"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "label"       : label,
      "city"        : city,
      "state"       : state,
      "county"      : county,
      "street"      : street,
      "district"    : district,
      "countryName" : countryName,
      "countryCode" : countryCode,
    };
  }
}

class Category {
  Category({
    this.id,
    this.name,
    this.primary,
  });

  String id;
  String name;
  bool primary;

  factory Category.fromRawJson(String str) {
    return Category.fromJson(json.decode(str));
  }

  String toRawJson() => json.encode(toJson());


  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id      : json["id"],
      name    : json["name"],
      primary : json["primary"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id"      : id,
      "name"    : name,
      "primary" : primary,
    };
  }
}
