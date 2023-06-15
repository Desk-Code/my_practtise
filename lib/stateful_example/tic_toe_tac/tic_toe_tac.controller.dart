import 'package:flutter/material.dart';

List value = ["", "", "", "", "", "", "", "", ""];
bool xTurn = false; // true means player O
int fillBox = 0;
int playerOCount = 0;
int playerXCount = 0;
int drawMatch = 0;

class TicToeTac {
  static void clearControl() {
    value = ["", "", "", "", "", "", "", "", ""];
    fillBox = 0;
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

  static void playerSwapping(int index, context) {
    if (xTurn && value[index] == "") {
      value[index] = "O";
      xTurn = !xTurn;
      fillBox += 1;
    } else if (!xTurn && value[index] == "") {
      value[index] = "X";
      xTurn = !xTurn;
      fillBox += 1;
    }
    if (fillBox > 4) {
      winnerState(context);
    }
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
}
