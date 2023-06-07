
import 'package:flutter/material.dart';

class Whatsapp {
  String? name;
  String? massage;
  String? photo;
  String? date;
  IconData? icon;

  Whatsapp({this.name, this.massage, this.photo, this.date, this.icon});

  factory Whatsapp.fromJson(Map<String, dynamic> json) => Whatsapp(
        name: json['name'],
        massage: json['massage'],
        photo: json['photo'],
        date: json['date'],
        icon: json['icon'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data["name"] = name;
    }
    if (massage != null) {
      data["massage"] = massage;
    }
    if (photo != null) {
      data["photo"] = photo;
    }
    if (date != null) {
      data["date"] = date;
    }
    if (icon != null) {
      data["icon"] = icon;
    }
    return data;
  }
}
