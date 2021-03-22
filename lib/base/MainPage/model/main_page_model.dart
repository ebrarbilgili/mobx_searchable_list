import 'package:json_annotation/json_annotation.dart';

part 'main_page_model.g.dart';

@JsonSerializable()
class MainPageModel {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  MainPageModel(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company});

  factory MainPageModel.fromJson(Map<String, dynamic> json) {
    return _$MainPageModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MainPageModelToJson(this);
  }
}

@JsonSerializable()
class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddressToJson(this);
  }
}

@JsonSerializable()
class Geo {
  String? lat;
  String? lng;

  Geo({this.lat, this.lng});

  factory Geo.fromJson(Map<String, dynamic> json) {
    return _$GeoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GeoToJson(this);
  }
}

@JsonSerializable()
class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({this.name, this.catchPhrase, this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return _$CompanyFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CompanyToJson(this);
  }
}
