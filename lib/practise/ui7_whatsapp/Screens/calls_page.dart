import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/whatsapp_row_data.dart';

class WhatsappCallsPage extends StatelessWidget {
  const WhatsappCallsPage({super.key});

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
                  shape: BoxShape.circle, color: Colors.green),
              alignment: Alignment.center,
              child: const Icon(
                Icons.link,
                color: Colors.white,
              ),
            ),
            title: const Text(
              "Create call link",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            subtitle: const Text(
              "Share a link for your WhatsApp call",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20),
            child: Text(
              "Recent",
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
              trailing: Icon(
                rowData[index]["icon"],
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
