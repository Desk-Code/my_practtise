import 'package:flutter/material.dart';

class ValidationFormDemo extends StatefulWidget {
  const ValidationFormDemo({super.key});

  @override
  State<ValidationFormDemo> createState() => _ValidationFormDemoState();
}

class _ValidationFormDemoState extends State<ValidationFormDemo> {
  final TextEditingController _txtNameController = TextEditingController();
  final TextEditingController _txtSurnameController = TextEditingController();
  final TextEditingController _txtMobnoController = TextEditingController();
  final TextEditingController _txtEidController = TextEditingController();
  final TextEditingController _txtAgeController = TextEditingController();

  final GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: key,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _txtNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Data";
                      } else if (value.length >= 20) {
                        return "Please Enter belong 20 Character";
                      } else if (!RegExp('[a-zA-Z]').hasMatch(value) &&
                          RegExp('[0-9]').hasMatch(value)) {
                        return "Please Enter Alphabet Only";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Data";
                      } else if (value.length >= 20) {
                        return "Please Enter belong 20 Character";
                      } else if (!RegExp('[a-zA-Z]').hasMatch(value)) {
                        return "Please Enter Alphabet Only";
                      } else {
                        return null;
                      }
                    },
                    controller: _txtSurnameController,
                    decoration: InputDecoration(
                        labelText: "Surname",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Data";
                      } else if (!RegExp('[0-9]').hasMatch(value)) {
                        return "Please Enter Numbers Only";
                      } else if (value.length != 10) {
                        return "Please Enter 10 Digit Number";
                      } else {
                        return null;
                      }
                    },
                    controller: _txtMobnoController,
                    decoration: InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
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
                    controller: _txtEidController,
                    decoration: InputDecoration(
                        labelText: "Email Id",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter a Data";
                      } else if (!RegExp('[0-9]').hasMatch(value)) {
                        return "Please Enter Numbers Only";
                      } else if (value.length != 2) {
                        return "Please Enter Valid Date";
                      } else {
                        return null;
                      }
                    },
                    controller: _txtAgeController,
                    decoration: InputDecoration(
                        labelText: "Age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Data is Correct..")));
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
