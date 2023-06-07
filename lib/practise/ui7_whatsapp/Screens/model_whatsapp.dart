import 'package:flutter/material.dart';
import 'package:my_practtise/practise/ui7_whatsapp/whatsapp_model.dart';
import 'package:my_practtise/practise/ui7_whatsapp/whatsapp_row_data.dart';

class ModelWhatsapp extends StatelessWidget {
  const ModelWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    for (var ele in rowData) {
      whatsappData.add(Whatsapp.fromJson(ele));
    }
    return SingleChildScrollView(
      child: Column(
          children: List.generate(
              whatsappData.length,
              (index) => ListTile(
                    leading: Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            whatsappData[index].photo!,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(whatsappData[index].name!,
                        style: const TextStyle(color: Colors.white)),
                    subtitle: Text(whatsappData[index].massage!,
                        style: const TextStyle(color: Colors.white)),
                    trailing: Text(whatsappData[index].date!,
                        style: const TextStyle(color: Colors.white)),
                  ))),
    );
  }
}
