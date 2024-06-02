import 'package:dashboard/Components/CustomAppbar.dart';
import 'package:dashboard/Components/CustomButton.dart';
import 'package:dashboard/Components/sideBar.dart';
import 'package:dashboard/Controllers/dashboardController.dart';
import 'package:dashboard/Screens/tabs/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return GetBuilder(
        init: DashboardController(),
        builder: (controller) {
          return Scaffold(
              body: Container(
            height: _height,
            width: _width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('../../assets/bg.png'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                CustomAppbar(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(flex: 1, child: Container(child: Sidebar())),
                      Expanded(
                          flex: 4,
                          child: Container(
                              
                              child: PageView(
                                controller: controller.pageController,
                                scrollDirection: Axis.vertical,
                                onPageChanged: (index) {
                                  controller.updatePageIndex(index);
                                },
                                physics: NeverScrollableScrollPhysics(),
                                children: [
                                  Home(),
                                  Container(
                                    color: Colors.red,
                                    child: Center(
                                      child: Text('About'),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.green,
                                    child: Center(
                                      child: Text('Support'),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.yellow,
                                    child: Center(
                                      child: Text('Contact'),
                                    ),
                                  ),
                                ],
                              )))
                    ],
                  ),
                ),
              ],
            ),
          ));
        });
  }
}
