import 'package:flutter/material.dart';

class Palindrome {
  static String? msg;

  static final TextEditingController _txtIsPalindrome = TextEditingController();

  static set isPalindromeNumber(int data) => _isPalindromeNumber(data);

  static set isPalindromeString(String data) => _isPalindromeString(data);

  static TextEditingController get txtIsPalindromeController =>
      _txtIsPalindrome;

  static get checkPalindrome {
    try {
      isPalindromeNumber = int.parse(txtIsPalindromeController.text);
    } catch (e) {
      isPalindromeString = txtIsPalindromeController.text;
    }
  }

  static _isPalindromeNumber(int number) {
    int temp = number;
    int reminder;
    int sum = 0;
    while (temp > 0) {
      reminder = temp % 10;
      sum = (sum * 10) + reminder;
      temp = temp ~/ 10;
    }
    if (sum == number) {
      msg = "Palindrome Number";
    } else {
      msg = "Not Palindrome Number";
    }
  }

  static void _isPalindromeString(String str) {
    String rev = '';

    for (int i = str.length - 1; i >= 0; i--) {
      rev += (str[i]);
    }

    if (rev == str) {
      msg = "Palindrome String";
    } else {
      msg = "Not Palindrome String";
    }
  }
}
