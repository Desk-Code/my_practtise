class User {
  String? userName;
  String? emailId;

  User({
    this.userName,
    this.emailId,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        userName: json['userName'],
        emailId: json['emailId'],
      );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (userName != null) {
      data['userName'] = userName;
    }
    if (emailId != null) {
      data['emailId'] = emailId;
    }
    return data;
  }
}
