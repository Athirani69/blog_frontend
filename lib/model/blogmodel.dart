// To parse this JSON data, do
//
//     final blog = blogFromJson(jsonString);

import 'dart:convert';

List<Blog> blogFromJson(String str) => List<Blog>.from(json.decode(str).map((x) => Blog.fromJson(x)));

String blogToJson(List<Blog> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog {
  String id;
  String name;
  String mob;
  String adrs;
  String pincode;
  String email;
  String pass;
  int v;

  Blog({
    required this.id,
    required this.name,
    required this.mob,
    required this.adrs,
    required this.pincode,
    required this.email,
    required this.pass,
    required this.v,
  });

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
    id: json["_id"],
    name: json["name"],
    mob: json["mob"],
    adrs: json["adrs"],
    pincode: json["pincode"],
    email: json["email"],
    pass: json["pass"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "mob": mob,
    "adrs": adrs,
    "pincode": pincode,
    "email": email,
    "pass": pass,
    "__v": v,
  };
}
