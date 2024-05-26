import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhoneField extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String label;
  const PhoneField(
      {super.key,
      required this.controller,
      required this.label,
      required this.focusNode});

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: widget.label,
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
