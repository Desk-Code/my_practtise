class SelectionControl {
  static String gender = '';
  static List<String> hobbys = [];
  static List<bool> isTapped = List.generate(8, (index) => false);
  static String result = '';

  static void clearControl() {
    gender = '';
    hobbys.clear();
    isTapped = List.generate(8, (index) => false);
  }
}
