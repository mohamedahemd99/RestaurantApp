// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.the0,
    this.the1,
    this.the2,
    this.the3,
    this.the4,
    this.the5,
    this.the6,
    this.the7,
    this.the8,
    this.the9,
    this.the10,
    this.the11,
    this.the12,
    this.the13,
    this.the14,
    this.id,
    this.key,
    this.name,
    this.password,
    this.email,
    this.phone,
    this.phone2,
    this.address,
    this.city,
    this.country,
    this.locLong,
    this.locLat,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.reply,
  });

  String the0;
  String the1;
  String the2;
  String the3;
  dynamic the4;
  String the5;
  dynamic the6;
  dynamic the7;
  String the8;
  String the9;
  String the10;
  String the11;
  String the12;
  DateTime the13;
  DateTime the14;
  String id;
  String key;
  String name;
  String password;
  dynamic email;
  String phone;
  dynamic phone2;
  dynamic address;
  String city;
  String country;
  String locLong;
  String locLat;
  String status;
  DateTime createdAt;
  DateTime updatedAt;
  bool reply;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    the0: json["0"],
    the1: json["1"],
    the2: json["2"],
    the3: json["3"],
    the4: json["4"],
    the5: json["5"],
    the6: json["6"],
    the7: json["7"],
    the8: json["8"],
    the9: json["9"],
    the10: json["10"],
    the11: json["11"],
    the12: json["12"],
    the13: DateTime.parse(json["13"]),
    the14: DateTime.parse(json["14"]),
    id: json["id"],
    key: json["key"],
    name: json["name"],
    password: json["password"],
    email: json["email"],
    phone: json["phone"],
    phone2: json["phone2"],
    address: json["address"],
    city: json["city"],
    country: json["country"],
    locLong: json["loc_long"],
    locLat: json["loc_lat"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    reply: json["reply"],
  );

  Map<String, dynamic> toJson() => {
    "0": the0,
    "1": the1,
    "2": the2,
    "3": the3,
    "4": the4,
    "5": the5,
    "6": the6,
    "7": the7,
    "8": the8,
    "9": the9,
    "10": the10,
    "11": the11,
    "12": the12,
    "13": the13.toIso8601String(),
    "14": the14.toIso8601String(),
    "id": id,
    "key": key,
    "name": name,
    "password": password,
    "email": email,
    "phone": phone,
    "phone2": phone2,
    "address": address,
    "city": city,
    "country": country,
    "loc_long": locLong,
    "loc_lat": locLat,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "reply": reply,
  };
}
