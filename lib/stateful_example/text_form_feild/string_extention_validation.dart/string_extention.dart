extension MyStringExtention on String {
  String? get isValid => isEmpty ? "user name is requried" : null;
}
