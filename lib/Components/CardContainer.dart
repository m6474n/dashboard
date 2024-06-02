import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double height;
  final Widget? child;
  final Color? bgColor;
  const CustomCard(
      {super.key,
       this.child,
       this.bgColor = Colors.white,
      required this.height,
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Container(height: height,
              
                decoration: BoxDecoration(color: bgColor,
                borderRadius: BorderRadius.circular(12),
                 boxShadow: [BoxShadow(
                  color: Colors.black38.withOpacity(0.3),
                  offset: Offset(0.2, 0.2),
                  spreadRadius: 1,
                  blurRadius: 8
                )]),
                child: child,
                ),
              );
  }
}
