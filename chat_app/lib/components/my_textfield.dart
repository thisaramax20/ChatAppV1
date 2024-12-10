import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;
  const MyTextfield(
      {super.key,
      required this.hintText,
      required this.obscureText,
      required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black26)),
            fillColor: Colors.white60,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.black12)),
      ),
    );
  }
}
