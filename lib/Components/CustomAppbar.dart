import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(12),
          color: Colors.white
        
        
         ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 22),
          child: Row(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                    size: 42,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "DoMat X",
                    style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w900,
                        color: Colors.deepPurple),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("User name"),
                  SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
