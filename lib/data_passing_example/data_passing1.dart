import 'package:flutter/material.dart';
import 'package:my_practtise/data_passing_example/data_passing2.dart';
import 'package:my_practtise/data_passing_example/user_model.dart';

class DataPassing1 extends StatefulWidget {
  const DataPassing1({super.key});

  @override
  State<DataPassing1> createState() => _DataPassing1State();
}

class _DataPassing1State extends State<DataPassing1> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNameController,
            ),
            TextField(
              controller: middleNameController,
            ),
            TextField(
              controller: lastNameController,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  User obj = User(
                    firstName: firstNameController.text,
                    middleName: middleNameController.text,
                    lastName: lastNameController.text,
                  );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataPassing2(
                          data: obj,
                        ),
                      ));
                },
                child: const Text("Submit"))
          ],
        ),
      ),
    );
  }
}
