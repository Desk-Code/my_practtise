import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextDecorationPage extends StatefulWidget {
  const TextDecorationPage({super.key});

  @override
  State<TextDecorationPage> createState() => _TextDecorationPageState();
}

class _TextDecorationPageState extends State<TextDecorationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          cursorColor: Colors.red,
          cursorHeight: 30,
          cursorWidth: 30,
          cursorRadius: const Radius.circular(15),
          cursorOpacityAnimates: true,
          // enableSuggestions: false,
          // enabled: false,
          // readOnly: true,
          // expands: true,
          // maxLines: 5,
          // minLines: 1,
          // maxLength: 5,
          // keyboardType: TextInputType.name,
          inputFormatters: [
            // FilteringTextInputFormatter.digitsOnly,
            FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
            // TextInputFormatter.withFunction((oldValue, newValue) =>
            //     TextEditingValue(text: "hiii, this is Demo")),
          ],
          // mouseCursor: MouseCursor.defer,
          // obscureText: true,
          // obscuringCharacter: "H",
          // showCursor: false,
        ),
      ),
    );
  }
}
