import 'package:flutter/material.dart';

class CrudUpdatePage extends StatefulWidget {
  const CrudUpdatePage({super.key});

  @override
  State<CrudUpdatePage> createState() => _CrudUpdatePageState();
}

class _CrudUpdatePageState extends State<CrudUpdatePage> {
  final TextEditingController _txtUserNameController = TextEditingController();
  final TextEditingController _txtTimeController = TextEditingController();
  final TextEditingController _txtLastMsgController = TextEditingController();

  List<Map<String, dynamic>> imageList = [
    {
      "imageName": "Paris",
      "image": "assets/images/paris.jpeg",
    },
    {
      "imageName": "London",
      "image": "assets/images/london_tower.jpg",
    },
    {
      "imageName": "Stobarry",
      "image": "assets/images/stobarry.jpg",
    },
    {
      "imageName": "Bali",
      "image": "assets/images/bali.jpeg",
    },
  ];
  String selectedValue = "Paris";
  String getImage(String selectedValue) {
    int indexMatch = 0;
    for (int i = 0; i < imageList.length; i++) {
      if (selectedValue == imageList[i]['imageName']) {
        indexMatch = i;
      }
    }
    return imageList[indexMatch]['image'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _txtUserNameController,
              decoration: InputDecoration(
                  hintText: "UserName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _txtTimeController,
              decoration: InputDecoration(
                  hintText: "Last seen Time",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _txtLastMsgController,
              decoration: InputDecoration(
                  hintText: "Last Message",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Please Selecte Your Profile Pic :"),
                DropdownButton(
                  value: selectedValue,
                  items: List.generate(
                      imageList.length,
                      (index) => DropdownMenuItem(
                            value: imageList[index]['imageName'],
                            child: Text(
                              imageList[index]['imageName'],
                            ),
                          )),
                  onChanged: (value) {
                    selectedValue = value.toString();
                    setState(() {});
                  },
                ),
              ],
            ),
            CircleAvatar(
              backgroundImage: AssetImage(getImage(selectedValue)),
            ),
          ],
        ),
      ),
    );
  }
}
