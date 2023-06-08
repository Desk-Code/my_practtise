import 'package:flutter/material.dart';
import 'package:my_practtise/practise/gmail/gmail_drawer_widgets.dart';
import 'package:my_practtise/practise/gmail/gmail_model_class.dart';
import 'package:my_practtise/practise/gmail/gmail_row_data.dart';

class GmailModalPage extends StatefulWidget {
  const GmailModalPage({super.key});

  @override
  State<GmailModalPage> createState() => _GmailModalPageState();
}

class _GmailModalPageState extends State<GmailModalPage> {
  IconData icons = Icons.circle;
  String name = 'Active';
  Color colorIcon = Colors.green;
  @override
  Widget build(BuildContext context) {
    for (var ele in gmailRowData) {
      gmailData.add(GmaiModal.fromJson(ele));
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          Builder(builder: (context) {
            return ElevatedButton(
              onPressed: () => Scaffold.of(context).openEndDrawer(),
              child: const Text("End Drawer"),
            );
          }),
        ],
      ),
      endDrawer: const Drawer(),
      drawer: Drawer(
        surfaceTintColor: Colors.green,
        elevation: 50,
        // semanticLabel: "Hello",
        shadowColor: Colors.red,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        backgroundColor: Colors.lightBlue.shade50,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  bottom: 18,
                ),
                child: commonGmailDrawerText(
                    text: "Gmail", color: Colors.red, size: 25),
              ),
              const Divider(),
              ExpansionTile(
                title: Text(name),
                leading: Icon(
                  icons,
                  color: colorIcon,
                ),
                childrenPadding: const EdgeInsets.only(left: 60),
                children: [
                  ListTile(
                    title: const Text(
                      "Automatic",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: const Text(
                      "Based onn chat activity",
                      style: TextStyle(fontSize: 10),
                    ),
                    leading: Icon(
                      Icons.circle,
                      color: Colors.green.shade800,
                    ),
                    onTap: () {
                      icons = Icons.circle;
                      name = "Active";
                      colorIcon = Colors.green.shade800;
                      setState(() {});
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Do not disturb",
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: const Text(
                      "Mute chat notification",
                      style: TextStyle(fontSize: 10),
                    ),
                    leading: Icon(
                      Icons.do_not_disturb_on_rounded,
                      color: Colors.red.shade800,
                    ),
                    onTap: () {
                      icons = Icons.do_not_disturb_on_rounded;
                      name = "Disturb";
                      colorIcon = Colors.red.shade800;
                      setState(() {});
                    },
                  ),
                  ListTile(
                    title: const Text(
                      "Set as away",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.circle_outlined,
                      color: Colors.grey.shade800,
                    ),
                    onTap: () {
                      icons = Icons.circle_outlined;
                      name = "Away";
                      colorIcon = Colors.grey.shade800;
                      setState(() {});
                    },
                  ),
                ],
              ),
              ...List.generate(gmailData.length, (index) {
                // if (index == 1 || index == 3 || index == 21) {
                if (gmailData[index].name == null) {
                  return const Divider();
                }
                // if (index == 7 || index == 18) {
                else if (gmailData[index].icon == null) {
                  return commonGmailDrawerText(
                    text: gmailData[index].name!,
                  );
                } else if (gmailData[index].numOfMassage == null) {
                  return commonGmailTile(
                    icon: gmailData[index].icon!,
                    name: gmailData[index].name!,
                  );
                } else {
                  return commonGmailTile(
                    icon: gmailData[index].icon!,
                    name: gmailData[index].name!,
                    numOfMessage: gmailData[index].numOfMassage!,
                  );
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
