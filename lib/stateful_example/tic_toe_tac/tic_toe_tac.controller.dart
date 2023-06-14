import 'package:flutter/material.dart';

String player1 = "Player O";
String player2 = "Player X";
bool isActivated = false; // true means player O

int playerOCount = 0;
int playerXCount = 0;
int drawMatch = 0;

List value = ["", "", "", "", "", "", "", "", ""];

class TicToeTac {
  static void clearControl() {
    value = ["", "", "", "", "", "", "", "", ""];
  }

  static void winnerNumber(context) {
    (isActivated) ? playerXCount++ : playerOCount++;

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content:
            Text((isActivated) ? "Player X is Winner" : "Player O is Winner")));
    clearControl();
  }

  static void playerSwapping(int index) {
    if (value[index] == "") {
      if (isActivated == true) {
        value.removeAt(index);
        value.insert(index, "O");
        isActivated = false;
      } else {
        value.removeAt(index);
        value.insert(index, "X");
        isActivated = true;
      }
    }
  }

  static void winnerState(context) {
    if (value[0] == value[1] && value[1] == value[2] && value[0] != "") {
      winnerNumber(context);
    } else if (value[3] == value[4] && value[4] == value[5] && value[4] != "") {
      winnerNumber(context);
    } else if (value[6] == value[7] && value[7] == value[8] && value[8] != "") {
      winnerNumber(context);
    } else if (value[0] == value[3] && value[3] == value[6] && value[0] != "") {
      winnerNumber(context);
    } else if (value[1] == value[4] && value[4] == value[7] && value[1] != "") {
      winnerNumber(context);
    } else if (value[2] == value[5] && value[5] == value[8] && value[2] != "") {
      winnerNumber(context);
    } else if (value[0] == value[4] && value[4] == value[8] && value[0] != "") {
      winnerNumber(context);
    } else if (value[2] == value[4] && value[4] == value[6] && value[2] != "") {
      winnerNumber(context);
    } else if (value[0] != "" &&
        value[1] != "" &&
        value[2] != "" &&
        value[3] != "" &&
        value[4] != "" &&
        value[5] != "" &&
        value[6] != "" &&
        value[7] != "" &&
        value[8] != "") {
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
