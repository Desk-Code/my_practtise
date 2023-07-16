import 'package:flutter/material.dart';
import 'package:my_practtise/stateful_example/text_form_feild/string_extention_validation.dart/string_extention.dart';

class SingleTextFormFeildExtentionDemo extends StatefulWidget {
  const SingleTextFormFeildExtentionDemo({super.key});

  @override
  State<SingleTextFormFeildExtentionDemo> createState() =>
      _SingleTextFormFeildExtentionDemoState();
}

class _SingleTextFormFeildExtentionDemoState
    extends State<SingleTextFormFeildExtentionDemo> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    labelText: "UserName",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  validator: (value) => value!.isValid,
                  // validator: MultiValidator([
                  //   RequiredValidator(errorText: 'Name is required'),
                  //   EmailValidator(errorText: 'Email in not in foemate'),
                  //   MaxLengthValidator(10,
                  //       errorText: 'Maximum digit are required for 10 ddigit'),
                  //   MinLengthValidator(10,
                  //       errorText: 'Minimum length required ror 10 '),
                  // ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Data is Correct")));
                    }
                    setState(() {});
                  },
                  child: const Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
