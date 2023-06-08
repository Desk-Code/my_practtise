import 'package:flutter/material.dart';

class GmaiModal {
  String? name;
  IconData? icon;
  String? numOfMassage;
  GmaiModal({this.name, this.icon, this.numOfMassage});
  factory GmaiModal.fromJson(Map<String, dynamic> json) => GmaiModal(
        name: json["name"],
        icon: json["icon"],
        numOfMassage: json["numOfMassage"],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null) {
      data["name"] = name;
    }
    if (icon != null) {
      data["icon"] = icon;
    }
    if (numOfMassage != null) {
      data["numOfMassage"] = numOfMassage;
    }
    return data;
  }
}
