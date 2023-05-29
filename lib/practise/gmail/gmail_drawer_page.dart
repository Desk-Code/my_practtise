import 'package:flutter/material.dart';
import 'package:my_practtise/practise/gmail/gmail_drawer_widgets.dart';

class GmailDrawerPage extends StatelessWidget {
  const GmailDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
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
              const Divider(thickness: 1.5),
              commonGmailTile(icon: Icons.edit, name: "Add a status"),
              const Divider(),
              commonGmailTile(icon: Icons.all_inbox, name: "All inboxes"),
              const Divider(),
              commonGmailTile(icon: Icons.inbox, name: "Primary"),
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
