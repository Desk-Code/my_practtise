import 'package:flutter/material.dart';

class TextFormFeildDemo extends StatefulWidget {
  const TextFormFeildDemo({super.key});

  @override
  State<TextFormFeildDemo> createState() => _TextFormFeildDemoState();
}

class _TextFormFeildDemoState extends State<TextFormFeildDemo> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: key,
        child: Column(
          children: [
            TextFormField(
              controller: _textEditingController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Invalid Data";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (key.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Data is Available")));
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
