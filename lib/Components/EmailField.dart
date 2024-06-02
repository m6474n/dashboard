import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailField extends StatelessWidget {
  final String label;
  TextEditingController controller;
  FocusNode focusNode;
  EmailField(
      {super.key,
      required this.controller,
      required this.label,
      required this.focusNode});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      style: GoogleFonts.poppins(
             fontSize: 14, letterSpacing: 1),
      decoration: InputDecoration(
          hintText: label,
          hintStyle: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 14, letterSpacing: 1),
          filled: true,
          
          fillColor: Colors.grey.shade200,
          contentPadding: EdgeInsets.symmetric(vertical: 1 ,horizontal: 16),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6))),
    );
  }
}
