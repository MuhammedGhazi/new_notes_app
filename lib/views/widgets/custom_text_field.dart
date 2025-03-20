import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(Color(0xFF62fcd7)),
        hintText: hint,
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
