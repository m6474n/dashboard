import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordField extends StatefulWidget {
  final String label;
  TextEditingController controller;
  FocusNode focusNode;

  PasswordField(
      {super.key,
      required this.controller,
      required this.label,
      required this.focusNode});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      obscureText: obscure,
               style: GoogleFonts.poppins(
            fontSize: 14, letterSpacing: 1),
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
                obscure == false ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                obscure = !obscure;
              });
            },
          ),
          hintText: widget.label,
                    contentPadding: EdgeInsets.symmetric(vertical: 1 ,horizontal: 16),

          hintStyle: GoogleFonts.poppins(
              color: Colors.grey, fontSize: 14, letterSpacing: 1),
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6))),
    );
  }
}
