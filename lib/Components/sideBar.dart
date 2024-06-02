import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Controllers/dashboardController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8, left: 18, bottom: 18, right: 9),
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white)
      ,        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SidebarButton(
            title: 'Home',
            color: controller.selecteedIndex == 0
                ? Colors.deepPurple
                : Colors.transparent,
            textColor:
                controller.selecteedIndex == 0 ? Colors.white : Colors.deepPurple,
            onTap: () {
              // controller.changePage("Home");
              controller.pageController.animateToPage(0,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          SidebarButton(
            title: 'About',
            color: controller.selecteedIndex == 1
                ? Colors.deepPurple
                : Colors.transparent,
            textColor:
                controller.selecteedIndex == 1 ? Colors.white : Colors.deepPurple,
            onTap: () {
              // controller.changePage("About");
              controller.pageController.animateToPage(1,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          SidebarButton(
            title: 'Support',
            color: controller.selecteedIndex == 2
                ? Colors.deepPurple
                : Colors.transparent,
            textColor:
                controller.selecteedIndex == 2 ? Colors.white : Colors.deepPurple,
            onTap: () {
              // controller.changePage("Support");
              controller.pageController.animateToPage(2,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          ),
          SidebarButton(
            title: 'Contact',
            color: controller.selecteedIndex == 3
                ? Colors.deepPurple
                : Colors.transparent,
            textColor:
                controller.selecteedIndex == 3 ? Colors.white : Colors.deepPurple,
            onTap: () {
              controller.pageController.animateToPage(3,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
      
              // controller.changePage("Contact");
            },
          ),
        ],
      )),
    );
  }
}
