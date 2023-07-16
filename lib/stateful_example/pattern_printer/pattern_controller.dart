import 'package:flutter/material.dart';

class PatternController {
  // static String patternViewer = '';

  static final TextEditingController _txtInputedNumberOfRow =
      TextEditingController();

  static TextEditingController get txtInputedNumberOfRow =>
      _txtInputedNumberOfRow;

  // static void displayPattern({required index, required String value}) {
  //   patternViewer =
  //       PatternController.pattenList[index]['function'](int.parse(value));
  // }

  static List<Map<String, dynamic>> pattenList = [
    {
      'patternCount': 'Pattern1',
      'function': (int numOfRow) => pattern1(numOfRow),
    },
    {
      'patternCount': 'Pattern2',
      'function': (int numOfRow) => pattern2(numOfRow),
    },
    {
      'patternCount': 'Pattern3',
      'function': (int numOfRow) => pattern3(numOfRow),
    },
    {
      'patternCount': 'Pattern4',
      'function': (int numOfRow) => pattern4(numOfRow),
    },
    {
      'patternCount': 'Pattern5',
      'function': (int numOfRow) => pattern5(numOfRow),
    },
    {
      'patternCount': 'Pattern6',
      'function': (int numOfRow) => pattern6(numOfRow),
    },
    {
      'patternCount': 'Pattern7',
      'function': (int numOfRow) => pattern7(numOfRow),
    },
    {
      'patternCount': 'Pattern8',
      'function': (int numOfRow) => pattern8(numOfRow),
    },
    {
      'patternCount': 'Pattern9',
      'function': (int numOfRow) => pattern9(numOfRow),
    },
    {
      'patternCount': 'Pattern10',
      'function': (int numOfRow) => pattern10(numOfRow),
    },
    {
      'patternCount': 'Pattern11',
      'function': (int numOfRow) => pattern11(numOfRow),
    },
    {
      'patternCount': 'Pattern12',
      'function': (int numOfRow) => pattern12(numOfRow),
    },
    {
      'patternCount': 'Pattern13',
      'function': (int numOfRow) => pattern13(numOfRow),
    },
    {
      'patternCount': 'Pattern14',
      'function': (int numOfRow) => pattern14(numOfRow),
    },
    {
      'patternCount': 'Pattern15',
      'function': (int numOfRow) => pattern15(numOfRow),
    },
    {
      'patternCount': 'Pattern16',
      'function': (int numOfRow) => pattern16(numOfRow),
    },
    {
      'patternCount': 'Pattern17',
      'function': (int numOfRow) => pattern17(numOfRow),
    },
    {
      'patternCount': 'Pattern18',
      'function': (int numOfRow) => pattern18(numOfRow),
    },
    {
      'patternCount': 'Pattern19',
      'function': (int numOfRow) => pattern19(numOfRow),
    },
    {
      'patternCount': 'Pattern20',
      'function': (int numOfRow) => pattern20(numOfRow),
    },
    {
      'patternCount': 'Pattern21',
      'function': (int numOfRow) => pattern21(numOfRow),
    },
    {
      'patternCount': 'Pattern22',
      'function': (int numOfRow) => pattern22(numOfRow),
    },
    {
      'patternCount': 'Pattern23',
      'function': (int numOfRow) => pattern23(numOfRow),
    },
    {
      'patternCount': 'Pattern24',
      'function': (int numOfRow) => pattern24(numOfRow),
    },
  ];

  static String pattern1(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern2(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern3(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      for (int j = numOfRow; j >= i; j--) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern4(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = i; j >= 1; j--) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern5(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = numOfRow; j >= i; j--) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern6(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern7(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = i; j <= numOfRow; j++) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern8(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + (45 + j - 1).toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern9(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + i.toString();
      }
      ptn += '\n';
    }
    return (ptn);
  }

  static String pattern10(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      for (int j = numOfRow; j >= i; j--) {
        ptn = ptn + i.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern11(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      ptn += ' ' * (numOfRow - i);
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern12(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      ptn += ' ' * (numOfRow - i);
      for (int j = 1; j <= i; j++) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern13(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      ptn += ' ' * (i - 1);
      for (int j = i; j <= numOfRow; j++) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern14(int numOfRow) {
    String ptn = '';
    for (int i = numOfRow; i >= 1; i--) {
      ptn += ' ' * (i - 1);
      for (int j = i; j <= numOfRow; j++) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern15(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      ptn += ' ' * (numOfRow - i);
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern16(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    for (int i = numOfRow - 1; i >= 1; i--) {
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern17(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      ptn += ' ' * (numOfRow - i);
      for (int j = 1; j <= i; j++) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    for (int i = 2; i <= numOfRow; i++) {
      ptn += ' ' * (i - 1);
      for (int j = i; j <= numOfRow; j++) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern18(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += ' ' * (numOfRow - i) * 2;
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern19(int numOfRow) {
    String ptn = '';

    for (int i = numOfRow; i >= 1; i--) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += ' ' * (numOfRow - i) * 2;
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    for (int i = 2; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + j.toString();
      }
      ptn += ' ' * (numOfRow - i) * 2;
      for (int j = i; j >= 1; j--) {
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern20(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      (i == 1)
          ? ptn += (('  ' * (numOfRow - i)) + ('* \n'))
          : ptn += (('  ' * (numOfRow - i)) +
              ('* ') +
              ('  ' * (((i - 1) * 2) - 1)) +
              ('* \n'));
    }
    return ptn;
  }

  static String pattern21(int numOfRow) {
    int count = 1;
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + count.toString();
        count++;
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern22(int numOfRow) {
    String ptn = '';
    for (int i = 65; i <= 65 + numOfRow - 1; i++) {
      for (int j = 65; j <= i; j++) {
        ptn += String.fromCharCode(i);
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern23(int numOfRow) {
    String ptn = '';
    for (int i = 1; i <= numOfRow; i++) {
      for (int j = 1; j <= i; j++) {
        ptn = ptn + (j % 2).toString();
      }
      ptn += '\n';
    }
    return ptn;
  }

  static String pattern24(int numOfRow) {
    String ptn = '';
    String temp = '';
    for (int i = numOfRow; i >= 1; i--) {
      ptn += '  ' * (numOfRow + i);
      for (int j = numOfRow; j >= i; j--) {
        ptn = ptn + j.toString();
      }
      for (int j = i + 1; j <= numOfRow; j++) {
        temp = temp + j.toString();
        ptn += j.toString();
      }
      ptn += '\n';
    }
    return ptn;
  }
}
