import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/whatsapp_row_data.dart';

class WhatsappStatusPage extends StatelessWidget {
  const WhatsappStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              margin: const EdgeInsets.only(top: 10),
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/discord.jpg"),
                ),
              ),
              alignment: Alignment.bottomRight,
              child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 14,
                ),
              ),
            ),
            title: const Text(
              "My status",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            subtitle: const Text(
              "Tap to add status update",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
            child: Text(
              "Recent updates",
              style: TextStyle(
                  color: Colors.grey.shade900, fontWeight: FontWeight.bold),
            ),
          ),
          ...List.generate(
            rowData.length,
            (index) => ListTile(
              leading: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2.5),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      rowData[index]["photo"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(rowData[index]["name"],
                  style: const TextStyle(color: Colors.white)),
              subtitle: Text(rowData[index]["date"],
                  style: const TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
