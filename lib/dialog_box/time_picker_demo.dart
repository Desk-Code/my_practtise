import 'package:flutter/material.dart';

class TimePickerDemo extends StatefulWidget {
  const TimePickerDemo({super.key});

  @override
  State<TimePickerDemo> createState() => _TimePickerDemoState();
}

class _TimePickerDemoState extends State<TimePickerDemo> {
  TimeOfDay? selectedTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                ).then((value) {
                  setState(() {});
                  return value;
                });
              },
              child: const Text("Time Picker"),
            ),
            const SizedBox(
              height: 10,
            ),
            if (selectedTime != null)
              Text(
                selectedTime!.format(context),
              ),
          ],
        ),
      ),
    );
  }
}
