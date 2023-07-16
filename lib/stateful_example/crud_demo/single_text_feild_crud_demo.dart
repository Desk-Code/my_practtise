import 'package:flutter/material.dart';

class SingleTextFeildCrudDemo extends StatefulWidget {
  const SingleTextFeildCrudDemo({super.key});

  @override
  State<SingleTextFeildCrudDemo> createState() =>
      _SingleTextFeildCrudDemoState();
}

class _SingleTextFeildCrudDemoState extends State<SingleTextFeildCrudDemo> {
  final TextEditingController _txtUserNameController = TextEditingController();
  List<String> userData = [];
  bool isUpdate = false;
  int selectedIndex = 0;
  @override
  void dispose() {
    _txtUserNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _txtUserNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: (isUpdate)
                  ? () {
                      userData[selectedIndex] = _txtUserNameController.text;
                      _txtUserNameController.clear();
                      isUpdate = false;
                      setState(() {});
                    }
                  : () {
                      userData.add(_txtUserNameController.text);
                      _txtUserNameController.clear();
                      setState(() {});
                    },
              color: Colors.orange,
              child: (isUpdate) ? const Text("Update") : const Text("Submit"),
            ),
            const SizedBox(
              height: 20,
            ),
            (userData.isEmpty)
                ? const Text("There is Not Data")
                : Expanded(
                    child: ListView.builder(
                      itemCount: userData.length,
                      itemBuilder: (context, index) => Dismissible(
                        key: UniqueKey(),
                        onDismissed: (direction) {
                          userData.removeAt(index);
                          setState(() {});
                        },
                        child: ListTile(
                          title: Text(
                            userData[index],
                          ),
                          onTap: () {
                            isUpdate = true;
                            selectedIndex = index;
                            _txtUserNameController.text = userData[index];
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
