import 'package:flutter/material.dart';

class ThirdScreenPage extends StatelessWidget {
  const ThirdScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back to Second Screen"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.popUntil(context, ModalRoute.withName('/'));

                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const SecondScreenPage(),
                //   ),
                //   ModalRoute.withName('/'),
                // );

                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text("Go back to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
