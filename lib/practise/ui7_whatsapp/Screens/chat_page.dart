import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/whatsapp_row_data.dart';

class ChatPageWhatsapp extends StatelessWidget {
  const ChatPageWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: List.generate(
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
                    subtitle: Text(rowData[index]["massage"],
                        style: const TextStyle(color: Colors.white)),
                    trailing: Text(rowData[index]["date"],
                        style: const TextStyle(color: Colors.white)),
                  ))),
    );
  }
}
