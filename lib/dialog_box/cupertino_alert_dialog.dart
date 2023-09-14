import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDialogDemo extends StatefulWidget {
  const CupertinoDialogDemo({super.key});

  @override
  State<CupertinoDialogDemo> createState() => _CupertinoDialogDemoState();
}

class _CupertinoDialogDemoState extends State<CupertinoDialogDemo> {
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
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text("Cupertino Dialog"),
                      content: const Text("This is a Cupertino Dialog Button"),
                      actions: [
                        MaterialButton(
                          onPressed: () {},
                          child: const Text("yes"),
                        ),
                        MaterialButton(
                          onPressed: () {},
                          child: const Text("No"),
                        )
                      ],
                    );
                  },
                );
              },
              child: const Text("Cupertino Alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
