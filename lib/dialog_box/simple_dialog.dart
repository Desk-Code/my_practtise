import 'package:flutter/material.dart';

class SimpleDialogDemo extends StatefulWidget {
  const SimpleDialogDemo({super.key});

  @override
  State<SimpleDialogDemo> createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (context) => const SimpleDialog(
                      title: Text("Simple Dialog"),
                      children: [
                        Text("Data 1"),
                        Text("Data 2"),
                        Text("Data 3"),
                      ],
                    ),
                  );
                },
                child: const Text("Simple Dialog"))
          ],
        ),
      ),
    );
  }
}
