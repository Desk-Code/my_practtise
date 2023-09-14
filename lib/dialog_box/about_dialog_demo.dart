import 'package:flutter/material.dart';

class AboutDialogDemo extends StatefulWidget {
  const AboutDialogDemo({super.key});

  @override
  State<AboutDialogDemo> createState() => _AboutDialogDemoState();
}

class _AboutDialogDemoState extends State<AboutDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.settings),
                  children: [
                    const Text("Data 1"),
                    const Text("Data 2"),
                    const Text("Data 3"),
                  ],
                );
              },
              child: const Text("Show About Dialog"),
            )
          ],
        ),
      ),
    );
  }
}
