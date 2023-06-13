// import 'dart:developer';

class MyCounter {
  static int singleCount = 0;
  static int doubleCount = 0;
  static void singleIncrement() {
    singleCount++;

    // if (kDebugMode) {
    //   print(count);
    // }
    // debugPrint(count.toString());
    // log(singleCount.toString());
  }

  static void doubleIncrement() {
    doubleCount += 2;
  }

  static void singleDecrement() {
    singleCount--;
  }

  static void doubleDecrement() {
    doubleCount -= 2;
  }
}
