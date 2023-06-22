import 'package:flutter/material.dart';

class StapperList extends StatefulWidget {
  const StapperList({super.key});

  @override
  State<StapperList> createState() => _StapperListState();
}

class _StapperListState extends State<StapperList> {
  List<Step> stepperList = [
    const Step(title: Text("Step 1"), content: Text("Hiii, I am step 1")),
    const Step(title: Text("Step 2"), content: Text("Hiii, I am step 2")),
    const Step(title: Text("Step 3"), content: Text("Hiii, I am step 3")),
    const Step(title: Text("Step 4"), content: Text("Hiii, I am step 4")),
    const Step(title: Text("Step 5"), content: Text("Hiii, I am step 5")),
  ];
  int stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          currentStep: stepIndex,
          onStepContinue: (stepIndex != 4)
              ? () {
                  stepIndex++;
                  setState(() {});
                }
              : null,
          onStepCancel: (stepIndex != 0)
              ? () {
                  stepIndex--;
                  setState(() {});
                }
              : null,
          steps: stepperList
              .map((e) => Step(title: e.title, content: e.content))
              .toList(),
        ),
      ),
    );
  }
}
