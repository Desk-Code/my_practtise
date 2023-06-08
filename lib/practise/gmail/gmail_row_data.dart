import 'package:flutter/material.dart';
import 'package:my_practtise/practise/gmail/gmail_model_class.dart';

List<Map<String, dynamic>> gmailRowData = [
  {
    "icon": Icons.edit,
    "name": "Add a status",
  },
  {},
  {
    "icon": Icons.all_inbox,
    "name": "All inboxes",
  },
  {},
  {"icon": Icons.inbox, "name": "Primary", "numOfMassage": "367"},
  {
    "icon": Icons.sell_outlined,
    "name": "Promotions",
    "numOfMassage": "10",
  },
  {"icon": Icons.group_add_outlined, "name": "Social", "numOfMassage": "10"},
  {
    "name": "All labels",
  },
  {
    "icon": Icons.star_outline,
    "name": "Starred",
  },
  {
    "icon": Icons.schedule,
    "name": "Snoozed",
  },
  {"icon": Icons.label_important, "name": "Important", "numOfMassage": "12"},
  {"icon": Icons.send_rounded, "name": "Send", "numOfMassage": "2"},
  {
    "icon": Icons.schedule_send_outlined,
    "name": "Scheduled",
  },
  {
    "icon": Icons.send_and_archive_outlined,
    "name": "Outbox",
  },
  {"icon": Icons.find_in_page, "name": "Draft", "numOfMassage": "3"},
  {"icon": Icons.mail_outline, "name": "All mail", "numOfMassage": "99+"},
  {
    "icon": Icons.error_outline,
    "name": "Spam",
  },
  {
    "icon": Icons.delete_outline,
    "name": "Trash",
  },
  {
    "name": "Google Apps",
  },
  {
    "icon": Icons.date_range_sharp,
    "name": "Calender",
  },
  {
    "icon": Icons.person_pin,
    "name": "Contacts",
  },
  {},
  {
    "icon": Icons.settings,
    "name": "Setting",
  },
  {
    "icon": Icons.help_outline,
    "name": "help and feedback",
  },
];

List<GmaiModal> gmailData = [];
