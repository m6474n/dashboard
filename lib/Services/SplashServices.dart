import 'dart:async';

import 'package:dashboard/Screens/AuthenticationPage.dart';
import 'package:dashboard/Screens/Dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashService {
  FirebaseAuth auth = FirebaseAuth.instance;
  void isLogin() {
    final user = auth.currentUser;
    if (user != null) {
      Timer(Duration(seconds: 3), () {
        Get.to(Dashboard());
      });
    } else {
      Timer(Duration(seconds: 3), () {
        Get.to(AuthenticationScreen());
      });
    }
  }
}
