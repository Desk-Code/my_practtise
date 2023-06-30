import 'package:flutter/material.dart';

class TextFeildDemo extends StatefulWidget {
  const TextFeildDemo({super.key});

  @override
  State<TextFeildDemo> createState() => _TextFeildDemoState();
}

class _TextFeildDemoState extends State<TextFeildDemo> {
  // final TextEditingController _txtFirstNameController = TextEditingController();
  // final TextEditingController _txtMiddleNameController =
  //     TextEditingController();
  // final TextEditingController _txtLastNameController = TextEditingController();
  String? fullName;

  final List<TextEditingController> _textEditingController = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  @override
  void dispose() {
    for (var element in _textEditingController) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _textEditingController.add(TextEditingController());
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
              _textEditingController.length,
              (index) => TextField(
                controller: _textEditingController[index],
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            // TextField(
            //   controller: _txtFirstNameController,
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15))),
            // ),
            // TextField(
            //   controller: _txtMiddleNameController,
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15))),
            // ),
            // TextField(
            //   controller: _txtLastNameController,
            //   decoration: InputDecoration(
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(15))),
            // ),
            ElevatedButton(
              onPressed: () {
                fullName =
                    "${List.generate(_textEditingController.length, (index) => _textEditingController[index].text)}";
                setState(() {});
              },
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dancing Script",
                ),
              ),
            ),
            if (fullName != null)
              Text(
                fullName!,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Dancing Script",
                ),
              ),
          ],
        ),
      ),
    );
  }
}
