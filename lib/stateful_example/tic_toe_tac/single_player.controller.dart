import 'dart:math';

import 'package:flutter/material.dart';

class TicTacToeSingle {
  static List value = List.generate(9, (index) => "");
  static List<Color> cardColor = List.generate(9, (index) => Colors.grey);
  static bool xTurn = false;
  static int fillBox = 0;
  static int playerOCount = 0;
  static int playerXCount = 0;
  static int drawMatch = 0;
  static void playerSwap(int index, context) {
    if (!xTurn && value[index] == "") {
      value[index] = "X";
      cardColor[index] = Colors.yellow.shade300;
      fillBox++;
      xTurn = !xTurn;
    }
    winnerState(context);
  }

  static void clearControl() {
    value = List.generate(9, (index) => "");
    fillBox = 0;
    cardColor = List.generate(9, (index) => Colors.grey);
  }

  static void winnerState(context) {
    if (value[0] == value[1] && value[1] == value[2] && value[0] != "" ||
        value[3] == value[4] && value[4] == value[5] && value[4] != "" ||
        value[6] == value[7] && value[7] == value[8] && value[8] != "" ||
        value[0] == value[3] && value[3] == value[6] && value[0] != "" ||
        value[1] == value[4] && value[4] == value[7] && value[1] != "" ||
        value[2] == value[5] && value[5] == value[8] && value[2] != "" ||
        value[0] == value[4] && value[4] == value[8] && value[0] != "" ||
        value[2] == value[4] && value[4] == value[6] && value[2] != "") {
      winnerNumber(context);
    } else if (fillBox == 9) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Draw Match Play Again..."),
        ),
      );
      drawMatch += 1;
      clearControl();
    }
  }

  static void winnerNumber(context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text((xTurn) ? "Player X is Winner" : "Player O is Winner")));
    if (xTurn) {
      playerXCount++;
      xTurn = !xTurn;
    } else {
      playerOCount++;
      xTurn = !xTurn;
    }
    clearControl();
  }

  static Future<void> chooseRandom(context) async {
    int random = Random().nextInt(9);
    await Future.delayed(
      const Duration(seconds: 1),
      () {
        while (true) {
          if (value[random] == "") {
            cardColor[random] = Colors.red.shade300;
            value[random] = "0";
            fillBox++;
            xTurn = !xTurn;
            break;
          } else {
            random = Random().nextInt(9);
          }
        }
      },
    );
    // winnerState(context);
  }

  static Future<void> manualAi(context) async {
    await Future.delayed(
      const Duration(milliseconds: 1500),
      () async {
        if (value[1] == value[2] && value[0] == "" && value[1] != "" ||
            value[3] == value[6] && value[0] == "" && value[3] != "" ||
            value[4] == value[8] && value[0] == "" && value[4] != "") {
          value[0] = "O";
          cardColor[0] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[0] == value[2] && value[1] == "" && value[0] != "" ||
            value[4] == value[7] && value[1] == "" && value[4] != "") {
          value[1] = "O";
          cardColor[1] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[0] == value[1] && value[2] == "" && value[0] != "" ||
            value[5] == value[8] && value[2] == "" && value[5] != "") {
          value[2] = "0";
          cardColor[2] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[0] == value[6] && value[3] == "" && value[0] != "" ||
            value[4] == value[5] && value[3] == "" && value[4] != "") {
          value[3] = "0";
          cardColor[3] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[3] == value[5] && value[4] == "" && value[3] != "" ||
            value[1] == value[7] && value[4] == "" && value[1] != "" ||
            value[0] == value[8] && value[4] == "" && value[0] != "" ||
            fillBox == 1 && value[4] == "" ||
            fillBox == 0) {
          value[4] = "0";
          cardColor[4] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[3] == value[4] && value[5] == "" && value[3] != "" ||
            value[2] == value[8] && value[5] == "" && value[2] != "") {
          value[5] = "0";
          cardColor[5] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[7] == value[8] && value[6] == "" && value[7] != "" ||
            value[0] == value[3] && value[6] == "" && value[0] != "" ||
            value[2] == value[4] && value[6] == "" && value[2] != "") {
          value[6] = "0";
          cardColor[6] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[6] == value[8] && value[7] == "" && value[6] != "" ||
            value[1] == value[4] && value[7] == "" && value[1] != "") {
          value[7] = "O";
          cardColor[7] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else if (value[6] == value[7] && value[8] == "" && value[6] != "" ||
            value[2] == value[5] && value[8] == "" && value[2] != "" ||
            value[0] == value[4] && value[8] == "" && value[0] != "") {
          value[8] = "O";
          cardColor[8] = Colors.red.shade300;
          fillBox++;
          xTurn = !xTurn;
        } else {
          await chooseRandom(context);
        }
      },
    );
    winnerState(context);
  }
}
