import 'package:flutter/material.dart';

class FirstScreenPage extends StatelessWidget {
  const FirstScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          // onPressed: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => const SecondScreenPage(),
          //     ),
          //   );
          // },
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/secondScreen',
            );
          },
          child: const Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
