class InstaModel {
  String? name;
  String? url;
  InstaModel({this.name, this.url});
  factory InstaModel.fromJson(Map<String, dynamic> json) => InstaModel(
        name: json["name"],
        url: json["url"],
      );
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (name != null && url != null) {
      data["name"] = name;
      data["url"] = url;
    }

    return data;
  }
}
