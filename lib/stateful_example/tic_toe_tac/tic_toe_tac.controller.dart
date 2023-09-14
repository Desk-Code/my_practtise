import 'dart:async';

import 'package:flutter/material.dart';

List value = List.generate(9, (index) => "");
List<Color> cardColor = List.generate(9, (index) => Colors.grey);
bool xTurn = false; // true means player O
int fillBox = 0;
int playerOCount = 0;
int playerXCount = 0;
int drawMatch = 0;
List<double> elevation = List.generate(9, (index) => 0);

class TicToeTac {
  static Future<void> clearControl() async {
    await Future.delayed(const Duration(seconds: 2), () {
      value = List.generate(9, (index) => "");
      fillBox = 0;
      cardColor = List.generate(9, (index) => Colors.grey);
    });
  }

  static Future<void> winnerNumber(context) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text((xTurn) ? "Player X is Winner" : "Player O is Winner")));
    if (xTurn) {
      playerXCount++;
      xTurn = !xTurn;
    } else {
      playerOCount++;
      xTurn = !xTurn;
    }
    await clearControl();
  }

  static Future<void> playerSwapping(int index, context) async {
    if (xTurn && value[index] == "") {
      value[index] = "O";
      elevation[index] = 20;
      cardColor[index] = Colors.red.shade300;
      xTurn = !xTurn;
      fillBox += 1;
    } else if (!xTurn && value[index] == "") {
      value[index] = "X";
      elevation[index] = 20;
      cardColor[index] = Colors.yellow.shade300;
      xTurn = !xTurn;
      fillBox += 1;
    }
    if (fillBox > 4) {
      await winnerState(context);
    }
  }

  // static Future<void> winnerState(context) async {
  //   if (value[0] == value[1] && value[1] == value[2] && value[0] != "" ||
  //       value[3] == value[4] && value[4] == value[5] && value[4] != "" ||
  //       value[6] == value[7] && value[7] == value[8] && value[8] != "" ||
  //       value[0] == value[3] && value[3] == value[6] && value[0] != "" ||
  //       value[1] == value[4] && value[4] == value[7] && value[1] != "" ||
  //       value[2] == value[5] && value[5] == value[8] && value[2] != "" ||
  //       value[0] == value[4] && value[4] == value[8] && value[0] != "" ||
  //       value[2] == value[4] && value[4] == value[6] && value[2] != "") {
  //     await winnerNumber(context);
  //   } else if (fillBox == 9) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text("Draw Match Play Again..."),
  //       ),
  //     );
  //     drawMatch += 1;
  //     await clearControl();
  //   }
  // }

  static Future<void> winnerState(context) async {
    int choice = value[0] == value[1] &&
                value[1] == value[2] &&
                value[0] != "" ||
            value[3] == value[4] && value[4] == value[5] && value[4] != "" ||
            value[6] == value[7] && value[7] == value[8] && value[8] != "" ||
            value[0] == value[3] && value[3] == value[6] && value[0] != "" ||
            value[1] == value[4] && value[4] == value[7] && value[1] != "" ||
            value[2] == value[5] && value[5] == value[8] && value[2] != "" ||
            value[0] == value[4] && value[4] == value[8] && value[0] != "" ||
            value[2] == value[4] && value[4] == value[6] && value[2] != ""
        ? 1
        : fillBox == 9
            ? 2
            : 0;

    switch (choice) {
      case 1:
        await winnerNumber(context);
        break;
      case 2:
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Draw Match Play Again..."),
          ),
        );
        drawMatch += 1;
        await clearControl();
        break;
    }
  }
}
