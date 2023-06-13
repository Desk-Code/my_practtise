// List<Color> colors = [
//   Colors.green,
//   Colors.red,
// ];

// List<int> number = [];
// int count = 0;

class CrossColor {
//   static Color colorChangeData(int index) {
//     if (index % 2 == 0) {
//       return colors[0];
//     } else {
//       Color temp = colors[0];
//       colors[0] = colors[1];
//       colors[1] = temp;
//       return colors[0];
//     }
//   }

  // static Color colorChangeIndex(int index) {
  //   if (index == number[count]) {
  //     count++;
  //     return Colors.red;
  //   } else {
  //     return Colors.green;
  //   }
  // }
  static List inputedData = List.generate(30, (index) => index);
  static List outputData = [];
  static void crossPattern() {
    for (var i in inputedData) {
      if (i % 4 == 0 || (i - 3) % 4 == 0) {
        outputData.add(i);
      }
    }
  }
}
