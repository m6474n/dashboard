import 'package:dashboard/Screens/tabs/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  late PageController pageController;
  var selecteedIndex = 0;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
  }

  List<Widget> tabs = [
Home(),


  ];
  changePage(String page) {
    pageController.animateToPage(
        page == "Home"
            ? 0
            : page == "About"
                ? 1
                : page == "Support"
                    ? 2
                    : 3,
        duration: Duration(milliseconds: 500),
        curve: Curves.bounceIn);
    update();
  }

  updatePageIndex(index) {
    selecteedIndex = index;
    update();
  }
}
