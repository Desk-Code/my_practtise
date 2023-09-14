import 'package:flutter/material.dart';

class SimpleDialogUpdate extends StatefulWidget {
  const SimpleDialogUpdate({super.key});

  @override
  State<SimpleDialogUpdate> createState() => _SimpleDialogUpdateState();
}

class _SimpleDialogUpdateState extends State<SimpleDialogUpdate> {
  List<String> name = [];
  final TextEditingController _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showDialog(
            context: context,
            builder: (context) => SimpleDialog(
              title: const Text("Insert Dialog"),
              children: [
                TextField(
                  controller: _textEditingController,
                ),
                ElevatedButton(
                  onPressed: () {
                    name.add(_textEditingController.text);
                    _textEditingController.clear();
                    Navigator.pop(
                      context,
                    );
                    setState(() {});
                  },
                  child: const Text("Insert"),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          ...List.generate(
            name.length,
            (index) => GestureDetector(
              onTap: () async {
                await showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    title: const Text("Insert Dialog"),
                    children: [
                      TextField(
                        controller: _textEditingController,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          name[index] = _textEditingController.text;
                          _textEditingController.clear();
                          Navigator.pop(
                            context,
                          );
                          setState(() {});
                        },
                        child: const Text("Update"),
                      ),
                    ],
                  ),
                );
              },
              child: ListTile(
                title: Text(name[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
