import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example_2/palidrome_number_checker/palidrome_controller.dart';

class PalidromeNumberChecker extends StatefulWidget {
  const PalidromeNumberChecker({super.key});

  @override
  State<PalidromeNumberChecker> createState() => _PalidromeNumberCheckerState();
}

class _PalidromeNumberCheckerState extends State<PalidromeNumberChecker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: Palindrome.txtIsPalindromeController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              )),
            ),
            ElevatedButton(
              onPressed: () {
                Palindrome.checkPalindrome;
                setState(() {});
              },
              child: const Text("Submit"),
            ),
            if (Palindrome.msg != null) Text(Palindrome.msg!),
          ],
        ),
      ),
    );
  }
}
