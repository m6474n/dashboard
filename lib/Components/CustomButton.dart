import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 45,
        width: title.length > 5 ? 250 : 120,
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(6)),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 16, letterSpacing: 2.5),
          ),
        ),
      ),
    );
  }
}
