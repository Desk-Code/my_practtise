import 'package:flutter/material.dart';
import 'package:my_practtise/practise/gmail/gmail_drawer_widgets.dart';

class GmailDrawerPage extends StatefulWidget {
  const GmailDrawerPage({super.key});

  @override
  State<GmailDrawerPage> createState() => _GmailDrawerPageState();
}

class _GmailDrawerPageState extends State<GmailDrawerPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  IconData icons = Icons.circle;
  String name = 'Active';
  Color colorIcon = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              commonGmailTile(icon: Icons.edit, name: "Add a status"),
              const Divider(),
              commonGmailTile(icon: Icons.all_inbox, name: "All inboxes"),
              const Divider(),
              commonGmailTile(
                  icon: Icons.inbox, name: "Primary", numOfMessage: "359"),
              commonGmailTile(icon: Icons.sell_outlined, name: "Promotions"),
              commonGmailTile(icon: Icons.group_outlined, name: "Social"),
              commonGmailDrawerText(
                  text: "All labels", color: Colors.grey.shade700),
              commonGmailTile(icon: Icons.star_outline, name: "Starred"),
              commonGmailTile(icon: Icons.schedule, name: "Snoozed"),
              commonGmailTile(icon: Icons.label, name: "Important"),
              commonGmailTile(icon: Icons.send_rounded, name: "Sent"),
              commonGmailTile(
                  icon: Icons.schedule_send_outlined, name: "Scheduled"),
              commonGmailTile(
                  icon: Icons.send_and_archive_outlined, name: "Outbox"),
              commonGmailTile(icon: Icons.find_in_page, name: "Drafts"),
              commonGmailTile(icon: Icons.mail_outlined, name: "All mail"),
              commonGmailTile(icon: Icons.error_outline, name: "Spam"),
              commonGmailTile(icon: Icons.delete_outline, name: "Trash"),
              commonGmailDrawerText(
                  text: "Google apps", color: Colors.grey.shade700),
              commonGmailTile(icon: Icons.date_range_sharp, name: "Calender"),
              commonGmailTile(icon: Icons.person_pin, name: "Contacts"),
              const Divider(),
              commonGmailTile(icon: Icons.settings, name: "Settings"),
              commonGmailTile(
                  icon: Icons.help_outline, name: "Help & feedback"),
            ],
          ),
        ),
      ),
    );
  }
}
