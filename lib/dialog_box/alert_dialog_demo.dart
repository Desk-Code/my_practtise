import 'package:flutter/material.dart';

class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () {
                // showDialog(context: context, builder: (context) => Dia,);
              },
              child: const Text("Alert Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
