import 'package:flutter/material.dart';

class SecondScreenPage extends StatelessWidget {
  const SecondScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const ThirdScreenPage(),
                //     ));
                Navigator.pushNamed(
                  context,
                  '/thirdScreen',
                );
              },
              child: const Text("Go to Third Screen"),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back to First Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
