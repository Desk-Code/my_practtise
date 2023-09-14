import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2050),
                ).then((value) {
                  setState(() {});
                  return value;
                });
              },
              color: Colors.deepPurple.shade300,
              child: const Text("Show Date Picker"),
            ),
            const SizedBox(
              height: 10,
            ),
            if (selectedDate != null)
              Text(
                  "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"),
          ],
        ),
      ),
    );
  }
}
