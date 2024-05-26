import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInputField extends StatelessWidget {
  final String label;
  TextEditingController controller;
  FocusNode focusNode;
  CustomInputField(
      {super.key,
      required this.controller,
      required this.label,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
          hintText: label,
          hintStyle: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 16, letterSpacing: 1),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6))),
    );
  }
}
