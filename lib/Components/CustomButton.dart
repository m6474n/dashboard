import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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

class SidebarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? color, textColor;
  const SidebarButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.color,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(6)),
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                  color: textColor ?? Colors.deepPurple,
                  fontSize: 16,
                  letterSpacing: 2),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
