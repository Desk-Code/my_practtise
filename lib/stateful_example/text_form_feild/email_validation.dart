import 'package:flutter/material.dart';

class EmailValidatorDemo extends StatefulWidget {
  const EmailValidatorDemo({super.key});

  @override
  State<EmailValidatorDemo> createState() => _EmailValidatorDemoState();
}

class _EmailValidatorDemoState extends State<EmailValidatorDemo> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                controller: _textEditingController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please, Input a Email Data";
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return "Please input data carefully";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Data is available")));
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
